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

class CameraGet {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.id_camera = null;
      this.filename = null;
    }
    else {
      if (initObj.hasOwnProperty('id_camera')) {
        this.id_camera = initObj.id_camera
      }
      else {
        this.id_camera = 0;
      }
      if (initObj.hasOwnProperty('filename')) {
        this.filename = initObj.filename
      }
      else {
        this.filename = new std_msgs.msg.String();
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type CameraGet
    // Serialize message field [id_camera]
    bufferOffset = _serializer.uint8(obj.id_camera, buffer, bufferOffset);
    // Serialize message field [filename]
    bufferOffset = std_msgs.msg.String.serialize(obj.filename, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type CameraGet
    let len;
    let data = new CameraGet(null);
    // Deserialize message field [id_camera]
    data.id_camera = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [filename]
    data.filename = std_msgs.msg.String.deserialize(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += std_msgs.msg.String.getMessageSize(object.filename);
    return length + 1;
  }

  static datatype() {
    // Returns string type for a message object
    return 'medusa_msgs/CameraGet';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '2f97773bf93ac3afe9db99951b0af3fe';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    
    uint8 id_camera
    
    std_msgs/String filename
    
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
    const resolved = new CameraGet(null);
    if (msg.id_camera !== undefined) {
      resolved.id_camera = msg.id_camera;
    }
    else {
      resolved.id_camera = 0
    }

    if (msg.filename !== undefined) {
      resolved.filename = std_msgs.msg.String.Resolve(msg.filename)
    }
    else {
      resolved.filename = new std_msgs.msg.String()
    }

    return resolved;
    }
};

module.exports = CameraGet;
