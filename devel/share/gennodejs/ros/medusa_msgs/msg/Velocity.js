// Auto-generated. Do not edit!

// (in-package medusa_msgs.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let VelocityNED = require('./VelocityNED.js');
let VelocityBody = require('./VelocityBody.js');

//-----------------------------------------------------------

class Velocity {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.ned_velocity = null;
      this.body_velocity = null;
      this.speed = null;
      this.timestamp = null;
    }
    else {
      if (initObj.hasOwnProperty('ned_velocity')) {
        this.ned_velocity = initObj.ned_velocity
      }
      else {
        this.ned_velocity = new VelocityNED();
      }
      if (initObj.hasOwnProperty('body_velocity')) {
        this.body_velocity = initObj.body_velocity
      }
      else {
        this.body_velocity = new VelocityBody();
      }
      if (initObj.hasOwnProperty('speed')) {
        this.speed = initObj.speed
      }
      else {
        this.speed = 0.0;
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
    // Serializes a message object of type Velocity
    // Serialize message field [ned_velocity]
    bufferOffset = VelocityNED.serialize(obj.ned_velocity, buffer, bufferOffset);
    // Serialize message field [body_velocity]
    bufferOffset = VelocityBody.serialize(obj.body_velocity, buffer, bufferOffset);
    // Serialize message field [speed]
    bufferOffset = _serializer.float64(obj.speed, buffer, bufferOffset);
    // Serialize message field [timestamp]
    bufferOffset = _serializer.time(obj.timestamp, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type Velocity
    let len;
    let data = new Velocity(null);
    // Deserialize message field [ned_velocity]
    data.ned_velocity = VelocityNED.deserialize(buffer, bufferOffset);
    // Deserialize message field [body_velocity]
    data.body_velocity = VelocityBody.deserialize(buffer, bufferOffset);
    // Deserialize message field [speed]
    data.speed = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [timestamp]
    data.timestamp = _deserializer.time(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 64;
  }

  static datatype() {
    // Returns string type for a message object
    return 'medusa_msgs/Velocity';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '89c3e51eae0c79f238e531a3238e0f88';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    #Velocity Info
    
    medusa_msgs/VelocityNED ned_velocity
    medusa_msgs/VelocityBody body_velocity
    float64 speed #module of the velocity vector
    time timestamp
    ================================================================================
    MSG: medusa_msgs/VelocityNED
    float64 north_vel
    float64 east_vel
    float64 down_vel
    ================================================================================
    MSG: medusa_msgs/VelocityBody
    float64 vx
    float64 vy
    float64 vz
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new Velocity(null);
    if (msg.ned_velocity !== undefined) {
      resolved.ned_velocity = VelocityNED.Resolve(msg.ned_velocity)
    }
    else {
      resolved.ned_velocity = new VelocityNED()
    }

    if (msg.body_velocity !== undefined) {
      resolved.body_velocity = VelocityBody.Resolve(msg.body_velocity)
    }
    else {
      resolved.body_velocity = new VelocityBody()
    }

    if (msg.speed !== undefined) {
      resolved.speed = msg.speed;
    }
    else {
      resolved.speed = 0.0
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

module.exports = Velocity;
