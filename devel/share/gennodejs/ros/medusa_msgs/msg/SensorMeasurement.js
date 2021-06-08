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

class SensorMeasurement {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.timestamp = null;
      this.nav_status = null;
      this.measurement_name = null;
      this.sensor_id = null;
      this.sample = null;
      this.frequency = null;
      this.error = null;
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
      if (initObj.hasOwnProperty('measurement_name')) {
        this.measurement_name = initObj.measurement_name
      }
      else {
        this.measurement_name = '';
      }
      if (initObj.hasOwnProperty('sensor_id')) {
        this.sensor_id = initObj.sensor_id
      }
      else {
        this.sensor_id = 0;
      }
      if (initObj.hasOwnProperty('sample')) {
        this.sample = initObj.sample
      }
      else {
        this.sample = 0.0;
      }
      if (initObj.hasOwnProperty('frequency')) {
        this.frequency = initObj.frequency
      }
      else {
        this.frequency = 0.0;
      }
      if (initObj.hasOwnProperty('error')) {
        this.error = initObj.error
      }
      else {
        this.error = 0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type SensorMeasurement
    // Serialize message field [timestamp]
    bufferOffset = _serializer.time(obj.timestamp, buffer, bufferOffset);
    // Serialize message field [nav_status]
    bufferOffset = NavStatus.serialize(obj.nav_status, buffer, bufferOffset);
    // Serialize message field [measurement_name]
    bufferOffset = _serializer.string(obj.measurement_name, buffer, bufferOffset);
    // Serialize message field [sensor_id]
    bufferOffset = _serializer.uint8(obj.sensor_id, buffer, bufferOffset);
    // Serialize message field [sample]
    bufferOffset = _serializer.float32(obj.sample, buffer, bufferOffset);
    // Serialize message field [frequency]
    bufferOffset = _serializer.float32(obj.frequency, buffer, bufferOffset);
    // Serialize message field [error]
    bufferOffset = _serializer.int16(obj.error, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type SensorMeasurement
    let len;
    let data = new SensorMeasurement(null);
    // Deserialize message field [timestamp]
    data.timestamp = _deserializer.time(buffer, bufferOffset);
    // Deserialize message field [nav_status]
    data.nav_status = NavStatus.deserialize(buffer, bufferOffset);
    // Deserialize message field [measurement_name]
    data.measurement_name = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [sensor_id]
    data.sensor_id = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [sample]
    data.sample = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [frequency]
    data.frequency = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [error]
    data.error = _deserializer.int16(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += object.measurement_name.length;
    return length + 111;
  }

  static datatype() {
    // Returns string type for a message object
    return 'medusa_msgs/SensorMeasurement';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '30226808724a611420a1dfa82ca2c2ea';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    #Measurement obtained by a sensor
    
    time timestamp	
    medusa_msgs/NavStatus nav_status 
    string measurement_name
    uint8 sensor_id
    float32 sample	#Sensor measurement value
    float32 frequency
    int16 error
    
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
    const resolved = new SensorMeasurement(null);
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

    if (msg.measurement_name !== undefined) {
      resolved.measurement_name = msg.measurement_name;
    }
    else {
      resolved.measurement_name = ''
    }

    if (msg.sensor_id !== undefined) {
      resolved.sensor_id = msg.sensor_id;
    }
    else {
      resolved.sensor_id = 0
    }

    if (msg.sample !== undefined) {
      resolved.sample = msg.sample;
    }
    else {
      resolved.sample = 0.0
    }

    if (msg.frequency !== undefined) {
      resolved.frequency = msg.frequency;
    }
    else {
      resolved.frequency = 0.0
    }

    if (msg.error !== undefined) {
      resolved.error = msg.error;
    }
    else {
      resolved.error = 0
    }

    return resolved;
    }
};

module.exports = SensorMeasurement;
