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

class SonarGet {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.sonar_id = null;
      this.lines = null;
      this.sequence = null;
    }
    else {
      if (initObj.hasOwnProperty('sonar_id')) {
        this.sonar_id = initObj.sonar_id
      }
      else {
        this.sonar_id = 0;
      }
      if (initObj.hasOwnProperty('lines')) {
        this.lines = initObj.lines
      }
      else {
        this.lines = 0;
      }
      if (initObj.hasOwnProperty('sequence')) {
        this.sequence = initObj.sequence
      }
      else {
        this.sequence = false;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type SonarGet
    // Serialize message field [sonar_id]
    bufferOffset = _serializer.uint8(obj.sonar_id, buffer, bufferOffset);
    // Serialize message field [lines]
    bufferOffset = _serializer.int32(obj.lines, buffer, bufferOffset);
    // Serialize message field [sequence]
    bufferOffset = _serializer.bool(obj.sequence, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type SonarGet
    let len;
    let data = new SonarGet(null);
    // Deserialize message field [sonar_id]
    data.sonar_id = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [lines]
    data.lines = _deserializer.int32(buffer, bufferOffset);
    // Deserialize message field [sequence]
    data.sequence = _deserializer.bool(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 6;
  }

  static datatype() {
    // Returns string type for a message object
    return 'medusa_msgs/SonarGet';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'e28181e538bd1a400f55688c83baa26e';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    uint8 sonar_id
    
    int32 lines
    
    bool sequence
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new SonarGet(null);
    if (msg.sonar_id !== undefined) {
      resolved.sonar_id = msg.sonar_id;
    }
    else {
      resolved.sonar_id = 0
    }

    if (msg.lines !== undefined) {
      resolved.lines = msg.lines;
    }
    else {
      resolved.lines = 0
    }

    if (msg.sequence !== undefined) {
      resolved.sequence = msg.sequence;
    }
    else {
      resolved.sequence = false
    }

    return resolved;
    }
};

module.exports = SonarGet;
