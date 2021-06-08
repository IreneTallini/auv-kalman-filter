import numpy as np
from numpy.linalg import inv, pinv
import pymap3d as pm
import matplotlib.pyplot as plt


class Filter:
    def __init__(
        self,
        vel_std,
        yaw_std,
        range_std,
        init_pos,
        n_ranges,
        threshold,
        anch_pos,
        hz_imu,
        hz_depth,
        debug=0,
    ):

        ############################## IMU and DEPTH #########################################
        self.Q = np.diag([yaw_std, vel_std]) ** 2  # Error covariance
        self.state = np.array([[init_pos[0]], [init_pos[1]]])  # State
        self.P = np.eye(2)  # Covariance
        self.dt = 1 / float(hz_imu)  # Time difference for imu
        self.dt_depth = 1 / float(hz_depth)  # Time difference for depth sensor
        self.v_x = 0  # Velocity along x
        self.v_y = 0  # Velocity along y
        self.v_z = 0  # Velocity along z
        self.depth = 0
        ######################################################################################

        ############################## ATTITUDE #########################################
        self.roll = 0
        self.pitch = 0
        self.yaw = 0
        ######################################################################################

        ############################ RANGE ######################################
        self.n_ranges = n_ranges
        self.R = range_std * np.eye(threshold)  # Ranges covariance
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

    def L(self, yaw):
        """Jacobian with respect to the error (e_yaw, e_vel)"""

        jacob = np.array(
            [
                [-self.dt * self.v_x * np.sin(yaw), self.dt * np.cos(yaw)],
                [self.dt * self.v_x * np.cos(yaw), self.dt * np.sin(yaw)],
            ]
        )
        return jacob

    def f(self, yaw):
        """Returns f(x) and Jacobian of predict step"""

        f = self.state + np.array(
            [[self.dt * self.v_x * np.cos(yaw)], [self.dt * self.v_x * np.sin(yaw)]]
        )

        return f

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

        dp = p[:, :2] - ps[:, :2]
        jacob = dp / np.linalg.norm(p - ps, axis=1).reshape(dp.shape[0], 1)

        return jacob

    def update(self, anch_id, rg, ts):
        """Update step of the Kalman filter"""

        for i, t in enumerate(self.times_ranges):
            if t != 0 and ts - t > 6:
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
            pos = np.concatenate((self.state, [[self.depth]]), axis=0)

            H = self.H(pos, sens)

            K = np.dot(
                np.dot(self.P, H.T), pinv(np.dot(np.dot(H, self.P), H.T) + self.R)
            )

            y = self.ranges[anch_row] - np.linalg.norm(pos - sens, axis=0)
            y = y.reshape(y.shape[0], 1)

            self.state = self.state + np.dot(K, y)

            self.P = np.dot(np.eye(2) - np.dot(K, H), self.P)

            self.ranges = np.zeros(self.n_ranges)

    def predict(self, yaw):
        """Predict step of the Kalman filter"""

        F = np.eye(2)
        L = self.L(yaw)

        self.state = self.f(yaw)

        self.P = np.dot(np.dot(F, self.P), F.T) + np.dot(np.dot(L, self.Q), L.T)
