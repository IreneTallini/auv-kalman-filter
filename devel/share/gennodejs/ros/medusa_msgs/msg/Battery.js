// Auto-generated. Do not edit!

// (in-package medusa_msgs.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let NavStatus = require('./NavStatus.js');

//-----------------------------------------------------------

class Battery {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.nav_status = null;
      this.timestamp = null;
      this.percentage = null;
    }
    else {
      if (initObj.hasOwnProperty('nav_status')) {
        this.nav_status = initObj.nav_status
      }
      else {
        this.nav_status = new NavStatus();
      }
      if (initObj.hasOwnProperty('timestamp')) {
        this.timestamp = initObj.timestamp
      }
      else {
        this.timestamp = {secs: 0, nsecs: 0};
      }
      if (initObj.hasOwnProperty('percentage')) {
        this.percentage = initObj.percentage
      }
      else {
        this.percentage = 0.0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type Battery
    // Serialize message field [nav_status]
    bufferOffset = NavStatus.serialize(obj.nav_status, buffer, bufferOffset);
    // Serialize message field [timestamp]
    bufferOffset = _serializer.time(obj.timestamp, buffer, bufferOffset);
    // Serialize message field [percentage]
    bufferOffset = _serializer.float32(obj.percentage, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type Battery
    let len;
    let data = new Battery(null);
    // Deserialize message field [nav_status]
    data.nav_status = NavStatus.deserialize(buffer, bufferOffset);
    // Deserialize message field [timestamp]
    data.timestamp = _deserializer.time(buffer, bufferOffset);
    // Deserialize message field [percentage]
    data.percentage = _deserializer.float32(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 100;
  }

  static datatype() {
    // Returns string type for a message object
    return 'medusa_msgs/Battery';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'c9b87d3791e115e77dfb5d873b235e5d';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    #Battery Info
    
    medusa_msgs/NavStatus nav_status
    time timestamp
    float32 percentage
    
    ================================================================================
    MSG: medusa_msgs/NavStatus
    #NavStatus Info
    
    medusa_msgs/Position position
    medusa_msgs/AttitudeEuler attitude
    medusa_msgs/VelocityNED linear_velocity
    time timestamp
    ================================================================================
    MSG: medusa_msgs/Position
    #Position Info
    
    float64 latitude
    float64 longitude
    float64 depth
    float64 altitude
    ================================================================================
    MSG: medusa_msgs/AttitudeEuler
    float64 roll
    float64 pitch
    float64 yaw
    ================================================================================
    MSG: medusa_msgs/VelocityNED
    float64 north_vel
    float64 east_vel
    float64 down_vel
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new Battery(null);
    if (msg.nav_status !== undefined) {
      resolved.nav_status = NavStatus.Resolve(msg.nav_status)
    }
    else {
      resolved.nav_status = new NavStatus()
    }

    if (msg.timestamp !== undefined) {
      resolved.timestamp = msg.timestamp;
    }
    else {
      resolved.timestamp = {secs: 0, nsecs: 0}
    }

    if (msg.percentage !== undefined) {
      resolved.percentage = msg.percentage;
    }
    else {
      resolved.percentage = 0.0
    }

    return resolved;
    }
};

module.exports = Battery;
