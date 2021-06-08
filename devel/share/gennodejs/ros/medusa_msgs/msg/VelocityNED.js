// Auto-generated. Do not edit!

// (in-package medusa_msgs.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;

//-----------------------------------------------------------

class VelocityNED {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.north_vel = null;
      this.east_vel = null;
      this.down_vel = null;
    }
    else {
      if (initObj.hasOwnProperty('north_vel')) {
        this.north_vel = initObj.north_vel
      }
      else {
        this.north_vel = 0.0;
      }
      if (initObj.hasOwnProperty('east_vel')) {
        this.east_vel = initObj.east_vel
      }
      else {
        this.east_vel = 0.0;
      }
      if (initObj.hasOwnProperty('down_vel')) {
        this.down_vel = initObj.down_vel
      }
      else {
        this.down_vel = 0.0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type VelocityNED
    // Serialize message field [north_vel]
    bufferOffset = _serializer.float64(obj.north_vel, buffer, bufferOffset);
    // Serialize message field [east_vel]
    bufferOffset = _serializer.float64(obj.east_vel, buffer, bufferOffset);
    // Serialize message field [down_vel]
    bufferOffset = _serializer.float64(obj.down_vel, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type VelocityNED
    let len;
    let data = new VelocityNED(null);
    // Deserialize message field [north_vel]
    data.north_vel = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [east_vel]
    data.east_vel = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [down_vel]
    data.down_vel = _deserializer.float64(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 24;
  }

  static datatype() {
    // Returns string type for a message object
    return 'medusa_msgs/VelocityNED';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'b2b8e51aaded904c3e05f16a0c910d29';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
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
    const resolved = new VelocityNED(null);
    if (msg.north_vel !== undefined) {
      resolved.north_vel = msg.north_vel;
    }
    else {
      resolved.north_vel = 0.0
    }

    if (msg.east_vel !== undefined) {
      resolved.east_vel = msg.east_vel;
    }
    else {
      resolved.east_vel = 0.0
    }

    if (msg.down_vel !== undefined) {
      resolved.down_vel = msg.down_vel;
    }
    else {
      resolved.down_vel = 0.0
    }

    return resolved;
    }
};

module.exports = VelocityNED;
