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

class List {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.obj_num = null;
      this.obj_name = null;
    }
    else {
      if (initObj.hasOwnProperty('obj_num')) {
        this.obj_num = initObj.obj_num
      }
      else {
        this.obj_num = 0;
      }
      if (initObj.hasOwnProperty('obj_name')) {
        this.obj_name = initObj.obj_name
      }
      else {
        this.obj_name = [];
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type List
    // Serialize message field [obj_num]
    bufferOffset = _serializer.int32(obj.obj_num, buffer, bufferOffset);
    // Serialize message field [obj_name]
    // Serialize the length for message field [obj_name]
    bufferOffset = _serializer.uint32(obj.obj_name.length, buffer, bufferOffset);
    obj.obj_name.forEach((val) => {
      bufferOffset = std_msgs.msg.String.serialize(val, buffer, bufferOffset);
    });
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type List
    let len;
    let data = new List(null);
    // Deserialize message field [obj_num]
    data.obj_num = _deserializer.int32(buffer, bufferOffset);
    // Deserialize message field [obj_name]
    // Deserialize array length for message field [obj_name]
    len = _deserializer.uint32(buffer, bufferOffset);
    data.obj_name = new Array(len);
    for (let i = 0; i < len; ++i) {
      data.obj_name[i] = std_msgs.msg.String.deserialize(buffer, bufferOffset)
    }
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    object.obj_name.forEach((val) => {
      length += std_msgs.msg.String.getMessageSize(val);
    });
    return length + 8;
  }

  static datatype() {
    // Returns string type for a message object
    return 'medusa_msgs/List';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '61b929708fa3003d53352792f40a4e8c';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    #List
    
    int32 obj_num
    std_msgs/String[] obj_name
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
    const resolved = new List(null);
    if (msg.obj_num !== undefined) {
      resolved.obj_num = msg.obj_num;
    }
    else {
      resolved.obj_num = 0
    }

    if (msg.obj_name !== undefined) {
      resolved.obj_name = new Array(msg.obj_name.length);
      for (let i = 0; i < resolved.obj_name.length; ++i) {
        resolved.obj_name[i] = std_msgs.msg.String.Resolve(msg.obj_name[i]);
      }
    }
    else {
      resolved.obj_name = []
    }

    return resolved;
    }
};

module.exports = List;
