import numpy as np
from numpy.linalg import inv, pinv
import pymap3d as pm


class Filter:
    def __init__(
        self,
        acc_std,
        range_std,
        init_pos_ned,
        n_ranges,
        threshold,
        anch_pos,
        hz_depth,
        hz_cvm,
        beacon_err,
        debug=0,
    ):

        ############################## IMU and DEPTH #########################################
        self.state = np.array([[init_pos_ned[0]], [init_pos_ned[1]], [1], [1]])  # State
        self.P = np.eye(4)  # Covariance
        self.dt = 1 / float(hz_cvm)  # Time difference for imu
        self.dt_depth = 1 / float(hz_depth)  # Time difference for depth sensor
        self.Q = acc_std * np.block(
            [
                [(self.dt ** 4) / 4 * np.eye(2), (self.dt ** 3) / 2 * np.eye(2)],
                [(self.dt ** 3) / 2 * np.eye(2), (self.dt ** 2) * np.eye(2)],
            ]
        )
        self.v_z = 0  # Velocity along z
        self.depth = 0
        ######################################################################################

        ############################ RANGE ######################################
        self.n_ranges = n_ranges
        self.R = beacon_err * np.eye(threshold * 3)  # Ranges covariance
        for i in range(1, threshold):
            self.R[threshold * i - 1, threshold * i - 1] = range_std
        # self.R[2, 2]      = range_std
        # self.R[5, 5]      = range_std
        # self.R[8, 8]      = range_std
        self.ranges = np.zeros(n_ranges)  # Ranges measurements
        self.anch_pos = anch_pos  # Anchors positions
        self.rg_std = range_std
        self.times_ranges = np.zeros(n_ranges)

        self.threshold = (
            threshold  # How many ranges to use (0 <= threshold <= n_ranges)
        )
        #########################################################################

        ############################ PLOT / DEBUG ###############################
        self.count = 0
        self.debug = debug

        #########################################################################

    def F(self):
        """Matrix of predict step"""

        return np.array(
            [[1, 0, self.dt, 0], [0, 1, 0, self.dt], [0, 0, 1, 0], [0, 0, 0, 1]]
        )

    def H(self, p, ps):
        """Returns the Jacobian of measure equation"""

        assert p.shape == (3, 1), "p shape is {0}, should be {1}".format(
            p.shape, (3, 1)
        )
        assert ps.shape == (3, self.threshold), "ps shape is {0}, should be {1}".format(
            ps.shape, (3, self.threshold)
        )

        p = p.T
        ps = ps.T
        dp = np.concatenate((p[:, :2] - ps[:, :2], np.zeros((ps.shape[0], 2))), axis=1)
        jacob = dp / np.linalg.norm(p - ps, axis=1).reshape(dp.shape[0], 1)

        return jacob

    def M(self, p, ps):
        assert p.shape == (3, 1), "p shape is {0}, should be {1}".format(
            p.shape, (3, 1)
        )
        assert ps.shape == (3, self.threshold), "ps shape is {0}, should be {1}".format(
            ps.shape, (3, self.threshold)
        )
        p = p.T
        ps = ps.T

        dp = p[:, :2] - ps[:, :2]
        dp = dp / np.linalg.norm(p - ps, axis=1).reshape(dp.shape[0], 1)
        jacob = np.concatenate((dp, np.ones((ps.shape[0], 1))), axis=1)

        if self.threshold == 1:
            first = np.expand_dims(jacob[0], axis=0)
            new_jacob = first
        elif self.threshold == 2:
            first = np.expand_dims(jacob[0], axis=0)
            second = np.expand_dims(jacob[1], axis=0)
            three_zeros = np.zeros((1, 3))
            new_jacob = np.concatenate(
                (
                    np.concatenate((first, three_zeros), axis=1),
                    np.concatenate((three_zeros, second), axis=1),
                ),
                axis=0,
            )
        elif self.threshold == 3:
            first = np.expand_dims(jacob[0], axis=0)
            second = np.expand_dims(jacob[1], axis=0)
            third = np.expand_dims(jacob[2], axis=0)
            three_zeros = np.zeros((1, 3))
            six_zeros = np.zeros((1, 6))
            new_jacob = np.concatenate(
                (
                    np.concatenate((first, six_zeros), axis=1),
                    np.concatenate((three_zeros, second, three_zeros), axis=1),
                    np.concatenate((six_zeros, third), axis=1),
                ),
                axis=0,
            )
        return new_jacob

    def update(self, anch_id, rg, ts):
        """Update step of the Kalman filter"""

        for i, t in enumerate(self.times_ranges):
            if t != 0 and ts - t > 10:
                self.ranges[i] = 0
                self.times_ranges[i] = 0

        self.ranges[anch_id - 1] = rg

        not_zero = np.count_nonzero(self.ranges)
        if not_zero >= self.threshold:

            self.count += 1
            print("updating with ranges: ", self.count)
            anch_row = np.where(self.ranges != 0)
            anch_row = list(set(anch_row[0]))
            sens = self.anch_pos[anch_row].T

            pos = np.concatenate((self.state[:2], [[self.depth]]), axis=0)

            H = self.H(pos, sens)
            M = self.M(pos, sens)
            K = np.dot(
                np.dot(self.P, H.T),
                pinv(np.dot(np.dot(H, self.P), H.T) + np.dot(np.dot(M, self.R), M.T)),
            )

            y = self.ranges[anch_row] - np.linalg.norm(pos - sens, axis=0)
            y = y.reshape(y.shape[0], 1)

            self.state = self.state + np.dot(K, y)

            self.P = np.dot(np.eye(4) - np.dot(K, H), self.P)

            self.ranges = np.zeros(self.n_ranges)

    def predict(self, dummy):
        """Predict step of the Kalman filter"""
        F = self.F()

        self.state = np.dot(F, self.state)
        self.P = np.dot(np.dot(F, self.P), F.T) + self.Q
        self.v_x = self.state[2, 0]
        self.v_y = self.state[3, 0]
