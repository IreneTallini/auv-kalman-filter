// Auto-generated. Do not edit!

// (in-package medusa_msgs.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let std_msgs = _finder('std_msgs');

//-----------------------------------------------------------

class Command {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.command = null;
    }
    else {
      if (initObj.hasOwnProperty('command')) {
        this.command = initObj.command
      }
      else {
        this.command = new std_msgs.msg.String();
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type Command
    // Serialize message field [command]
    bufferOffset = std_msgs.msg.String.serialize(obj.command, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type Command
    let len;
    let data = new Command(null);
    // Deserialize message field [command]
    data.command = std_msgs.msg.String.deserialize(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += std_msgs.msg.String.getMessageSize(object.command);
    return length;
  }

  static datatype() {
    // Returns string type for a message object
    return 'medusa_msgs/Command';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'b45d65857bb7a4d869afeb1d0e4bf0c7';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    std_msgs/String command
    ================================================================================
    MSG: std_msgs/String
    string data
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new Command(null);
    if (msg.command !== undefined) {
      resolved.command = std_msgs.msg.String.Resolve(msg.command)
    }
    else {
      resolved.command = new std_msgs.msg.String()
    }

    return resolved;
    }
};

module.exports = Command;
