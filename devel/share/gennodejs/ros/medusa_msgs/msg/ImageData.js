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
let std_msgs = _finder('std_msgs');

//-----------------------------------------------------------

class ImageData {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.timestamp = null;
      this.nav_status = null;
      this.sensor_id = null;
      this.file_dimension = null;
      this.file_name = null;
    }
    else {
      if (initObj.hasOwnProperty('timestamp')) {
        this.timestamp = initObj.timestamp
      }
      else {
        this.timestamp = {secs: 0, nsecs: 0};
      }
      if (initObj.hasOwnProperty('nav_status')) {
        this.nav_status = initObj.nav_status
      }
      else {
        this.nav_status = new NavStatus();
      }
      if (initObj.hasOwnProperty('sensor_id')) {
        this.sensor_id = initObj.sensor_id
      }
      else {
        this.sensor_id = 0;
      }
      if (initObj.hasOwnProperty('file_dimension')) {
        this.file_dimension = initObj.file_dimension
      }
      else {
        this.file_dimension = 0;
      }
      if (initObj.hasOwnProperty('file_name')) {
        this.file_name = initObj.file_name
      }
      else {
        this.file_name = new std_msgs.msg.String();
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type ImageData
    // Serialize message field [timestamp]
    bufferOffset = _serializer.time(obj.timestamp, buffer, bufferOffset);
    // Serialize message field [nav_status]
    bufferOffset = NavStatus.serialize(obj.nav_status, buffer, bufferOffset);
    // Serialize message field [sensor_id]
    bufferOffset = _serializer.uint8(obj.sensor_id, buffer, bufferOffset);
    // Serialize message field [file_dimension]
    bufferOffset = _serializer.int32(obj.file_dimension, buffer, bufferOffset);
    // Serialize message field [file_name]
    bufferOffset = std_msgs.msg.String.serialize(obj.file_name, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type ImageData
    let len;
    let data = new ImageData(null);
    // Deserialize message field [timestamp]
    data.timestamp = _deserializer.time(buffer, bufferOffset);
    // Deserialize message field [nav_status]
    data.nav_status = NavStatus.deserialize(buffer, bufferOffset);
    // Deserialize message field [sensor_id]
    data.sensor_id = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [file_dimension]
    data.file_dimension = _deserializer.int32(buffer, bufferOffset);
    // Deserialize message field [file_name]
    data.file_name = std_msgs.msg.String.deserialize(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += std_msgs.msg.String.getMessageSize(object.file_name);
    return length + 101;
  }

  static datatype() {
    // Returns string type for a message object
    return 'medusa_msgs/ImageData';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'bdeb665e166b3b92a73c5133fe56b8ec';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    time timestamp	
    medusa_msgs/NavStatus nav_status 
    uint8 sensor_id
    int32 file_dimension
    std_msgs/String file_name
    
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
    const resolved = new ImageData(null);
    if (msg.timestamp !== undefined) {
      resolved.timestamp = msg.timestamp;
    }
    else {
      resolved.timestamp = {secs: 0, nsecs: 0}
    }

    if (msg.nav_status !== undefined) {
      resolved.nav_status = NavStatus.Resolve(msg.nav_status)
    }
    else {
      resolved.nav_status = new NavStatus()
    }

    if (msg.sensor_id !== undefined) {
      resolved.sensor_id = msg.sensor_id;
    }
    else {
      resolved.sensor_id = 0
    }

    if (msg.file_dimension !== undefined) {
      resolved.file_dimension = msg.file_dimension;
    }
    else {
      resolved.file_dimension = 0
    }

    if (msg.file_name !== undefined) {
      resolved.file_name = std_msgs.msg.String.Resolve(msg.file_name)
    }
    else {
      resolved.file_name = new std_msgs.msg.String()
    }

    return resolved;
    }
};

module.exports = ImageData;
