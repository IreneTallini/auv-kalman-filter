#!/usr/bin/env python2
# -*- coding: utf-8 -*-

import rospy
import numpy as np
from medusa_msgs.msg import Range, AttitudeEuler, NavStatus, Position, VelocityNED, Velocity
from std_msgs.msg import Float32
import k_filter_all
import k_filter_imu_range
import k_filter_range
import k_filter_range_beacon_error
import k_filter_all_beacon_error
import pymap3d as pm
import time

class nodo_principale:
    def __init__(self):
        self.name = name
        self.ref_pos = ref_pos
        self.anch_pos_lat = anch_pos
        self.anch_pos_ned = anch_pos_ned
        self.filter_type = filter_type

        if filter_type == "all":
            self.ekf = k_filter_all.Filter(vel_std, head_std, range_std, init_pos_ned, num_anchors, 
                threshold, anch_pos_ned, imu_rate, depth_rate, debug=debug)
            self.dvl_sub = rospy.Subscriber('team/sensors/dvl', Velocity, self.dvl_callback)        
        if filter_type == "imu_range":
            self.ekf = k_filter_imu_range.Filter(vel_std, head_std, range_std, init_pos_ned, num_anchors, 
                threshold, anch_pos_ned, imu_rate, depth_rate, debug=debug)
        if filter_type == "range":
            self.ekf = k_filter_range.Filter(acc_std, range_std, init_pos_ned, num_anchors, 
                threshold, anch_pos_ned, depth_rate, imu_rate, debug=debug)
        if filter_type == "range_beacon_error":
            self.ekf = k_filter_range_beacon_error.Filter(acc_std, range_std, init_pos_ned, num_anchors, 
                threshold, anch_pos_ned, depth_rate, imu_rate, beacon_std, debug=debug)
        if filter_type == "all_beacon_error":
            self.ekf = k_filter_all_beacon_error.Filter(vel_std, head_std, range_std, init_pos_ned, num_anchors, 
                threshold, anch_pos_ned, imu_rate, depth_rate, beacon_std, debug=debug)        

        self.state_pub = rospy.Publisher(name+'/state',NavStatus, queue_size=1000)

        self.depth_sub = rospy.Subscriber('team/sensors/depth', Float32, self.depth_callback)
        self.imu_sub = rospy.Subscriber('team/sensors/imu', AttitudeEuler, self.imu_callback)
        self.range_sub = rospy.Subscriber('team_sapienza/range', Range, self.range_callback)
        rospy.loginfo("Initialization complete")

    def depth_callback(self, data):
        self.ekf.v_z = (data.data - self.ekf.depth)/self.ekf.dt_depth
        self.ekf.depth = data.data
    
    def dvl_callback(self, data):
        self.ekf.v_x = data.body_velocity.vx
        self.ekf.v_y = data.body_velocity.vy

    def range_callback(self, data):
        
        self.ekf.update(data.node, data.distance, data.time)
                                
        lat, lon, h = pm.ned2geodetic(self.ekf.state[0], 
            self.ekf.state[1], 0, 
            self.ref_pos[0], self.ref_pos[1], 
            self.ref_pos[2])
        msg = NavStatus()
        msg.position = Position(lat, lon, self.ekf.depth, 0)
        msg.attitude = AttitudeEuler(self.ekf.roll, self.ekf.pitch, self.ekf.yaw)
        msg.linear_velocity = VelocityNED(self.ekf.v_x, self.ekf.v_y, self.ekf.v_z)
        msg.timestamp = rospy.get_rostime()
        self.state_pub.publish(msg)

        
    def imu_callback(self, data):
        yaw = data.yaw
        self.ekf.yaw = yaw
        self.ekf.roll = data.roll
        self.ekf.pitch = data.pitch
        self.ekf.predict(yaw)
        
        lat, lon, h = pm.ned2geodetic(self.ekf.state[0], 
            self.ekf.state[1], self.ref_pos[2], self.ref_pos[0], 
            self.ref_pos[1], self.ref_pos[2])
        
        msg = NavStatus()
        msg.position = Position(lat, lon, self.ekf.depth, 0)
        msg.attitude = AttitudeEuler(data.roll, data.pitch, data.yaw)
        msg.linear_velocity = VelocityNED(self.ekf.v_x, self.ekf.v_y, self.ekf.v_z)        
        msg.timestamp = rospy.get_rostime()
        
        self.state_pub.publish(msg)


if __name__ == '__main__':
    name = "team_sapienza_offline"
    rospy.init_node('nodo-sap')
    ref_pos = rospy.get_param('~reference_position')
    init_pos = rospy.get_param('~initial_position')
    anch_pos = rospy.get_param('~anchors')
    num_anchors = len(anch_pos)
    anch_pos_ned = np.zeros((num_anchors, 3))
    
    for i in range(num_anchors):
        n_anch, e_anch, _ = pm.geodetic2ned(anch_pos[i][0], 
                anch_pos[i][1], ref_pos[2], ref_pos[0], 
                ref_pos[1], ref_pos[2])
        anch_pos_ned[i] = np.array([n_anch, e_anch, anch_pos[i][2]])
    init_pos_ned = pm.geodetic2ned(init_pos[0], 
                init_pos[1], ref_pos[2], ref_pos[0], 
                ref_pos[1], ref_pos[2])

    imu_rate    = rospy.get_param('~imu_rate')
    depth_rate  = rospy.get_param('~depth_rate')
    filter_type  = rospy.get_param('~filter_type')
    print("filter type = " + filter_type)
    
    anch_pos    = np.array(anch_pos)
    threshold   = 3
    debug = rospy.get_param('~debug', False)

    ################# MEANS ####################
    vel_mean    = 0
    range_mean  = 0
    head_mean   = 0
    ############################################
    ################# STDs #################### 
    vel_std     = 1     # 1
    acc_std     = 0.1   # 0.1
    range_std   = 3     # 3 
    beacon_std  = 3     # 0.1   
    head_std    = 0.1   # 0.1
    ############################################
    
    n = nodo_principale()
    rospy.spin()
