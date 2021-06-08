// Auto-generated. Do not edit!

// (in-package medusa_msgs.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let Position = require('./Position.js');
let AttitudeEuler = require('./AttitudeEuler.js');
let VelocityNED = require('./VelocityNED.js');

//-----------------------------------------------------------

class NavStatus {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.position = null;
      this.attitude = null;
      this.linear_velocity = null;
      this.timestamp = null;
    }
    else {
      if (initObj.hasOwnProperty('position')) {
        this.position = initObj.position
      }
      else {
        this.position = new Position();
      }
      if (initObj.hasOwnProperty('attitude')) {
        this.attitude = initObj.attitude
      }
      else {
        this.attitude = new AttitudeEuler();
      }
      if (initObj.hasOwnProperty('linear_velocity')) {
        this.linear_velocity = initObj.linear_velocity
      }
      else {
        this.linear_velocity = new VelocityNED();
      }
      if (initObj.hasOwnProperty('timestamp')) {
        this.timestamp = initObj.timestamp
      }
      else {
        this.timestamp = {secs: 0, nsecs: 0};
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type NavStatus
    // Serialize message field [position]
    bufferOffset = Position.serialize(obj.position, buffer, bufferOffset);
    // Serialize message field [attitude]
    bufferOffset = AttitudeEuler.serialize(obj.attitude, buffer, bufferOffset);
    // Serialize message field [linear_velocity]
    bufferOffset = VelocityNED.serialize(obj.linear_velocity, buffer, bufferOffset);
    // Serialize message field [timestamp]
    bufferOffset = _serializer.time(obj.timestamp, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type NavStatus
    let len;
    let data = new NavStatus(null);
    // Deserialize message field [position]
    data.position = Position.deserialize(buffer, bufferOffset);
    // Deserialize message field [attitude]
    data.attitude = AttitudeEuler.deserialize(buffer, bufferOffset);
    // Deserialize message field [linear_velocity]
    data.linear_velocity = VelocityNED.deserialize(buffer, bufferOffset);
    // Deserialize message field [timestamp]
    data.timestamp = _deserializer.time(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 88;
  }

  static datatype() {
    // Returns string type for a message object
    return 'medusa_msgs/NavStatus';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'efaabb5a01aa1186aa62d98b6b280789';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
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
    const resolved = new NavStatus(null);
    if (msg.position !== undefined) {
      resolved.position = Position.Resolve(msg.position)
    }
    else {
      resolved.position = new Position()
    }

    if (msg.attitude !== undefined) {
      resolved.attitude = AttitudeEuler.Resolve(msg.attitude)
    }
    else {
      resolved.attitude = new AttitudeEuler()
    }

    if (msg.linear_velocity !== undefined) {
      resolved.linear_velocity = VelocityNED.Resolve(msg.linear_velocity)
    }
    else {
      resolved.linear_velocity = new VelocityNED()
    }

    if (msg.timestamp !== undefined) {
      resolved.timestamp = msg.timestamp;
    }
    else {
      resolved.timestamp = {secs: 0, nsecs: 0}
    }

    return resolved;
    }
};

module.exports = NavStatus;
