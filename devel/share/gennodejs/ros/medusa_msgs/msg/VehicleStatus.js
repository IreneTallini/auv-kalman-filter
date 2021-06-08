// Auto-generated. Do not edit!

// (in-package medusa_msgs.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let Battery = require('./Battery.js');

//-----------------------------------------------------------

class VehicleStatus {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.temperature = null;
      this.humidity = null;
      this.buoyancy = null;
      this.internal_pressure = null;
      this.battery = null;
      this.timestamp = null;
    }
    else {
      if (initObj.hasOwnProperty('temperature')) {
        this.temperature = initObj.temperature
      }
      else {
        this.temperature = 0.0;
      }
      if (initObj.hasOwnProperty('humidity')) {
        this.humidity = initObj.humidity
      }
      else {
        this.humidity = 0.0;
      }
      if (initObj.hasOwnProperty('buoyancy')) {
        this.buoyancy = initObj.buoyancy
      }
      else {
        this.buoyancy = 0.0;
      }
      if (initObj.hasOwnProperty('internal_pressure')) {
        this.internal_pressure = initObj.internal_pressure
      }
      else {
        this.internal_pressure = 0.0;
      }
      if (initObj.hasOwnProperty('battery')) {
        this.battery = initObj.battery
      }
      else {
        this.battery = new Battery();
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
    // Serializes a message object of type VehicleStatus
    // Serialize message field [temperature]
    bufferOffset = _serializer.float32(obj.temperature, buffer, bufferOffset);
    // Serialize message field [humidity]
    bufferOffset = _serializer.float32(obj.humidity, buffer, bufferOffset);
    // Serialize message field [buoyancy]
    bufferOffset = _serializer.float32(obj.buoyancy, buffer, bufferOffset);
    // Serialize message field [internal_pressure]
    bufferOffset = _serializer.float32(obj.internal_pressure, buffer, bufferOffset);
    // Serialize message field [battery]
    bufferOffset = Battery.serialize(obj.battery, buffer, bufferOffset);
    // Serialize message field [timestamp]
    bufferOffset = _serializer.time(obj.timestamp, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type VehicleStatus
    let len;
    let data = new VehicleStatus(null);
    // Deserialize message field [temperature]
    data.temperature = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [humidity]
    data.humidity = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [buoyancy]
    data.buoyancy = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [internal_pressure]
    data.internal_pressure = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [battery]
    data.battery = Battery.deserialize(buffer, bufferOffset);
    // Deserialize message field [timestamp]
    data.timestamp = _deserializer.time(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 124;
  }

  static datatype() {
    // Returns string type for a message object
    return 'medusa_msgs/VehicleStatus';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'a35718b2b68a03159df7289abbd1e7c2';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    #VehicleStatus Info
    
    float32 temperature
    float32 humidity
    float32 buoyancy
    float32 internal_pressure
    medusa_msgs/Battery battery
    time timestamp
    ================================================================================
    MSG: medusa_msgs/Battery
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
    const resolved = new VehicleStatus(null);
    if (msg.temperature !== undefined) {
      resolved.temperature = msg.temperature;
    }
    else {
      resolved.temperature = 0.0
    }

    if (msg.humidity !== undefined) {
      resolved.humidity = msg.humidity;
    }
    else {
      resolved.humidity = 0.0
    }

    if (msg.buoyancy !== undefined) {
      resolved.buoyancy = msg.buoyancy;
    }
    else {
      resolved.buoyancy = 0.0
    }

    if (msg.internal_pressure !== undefined) {
      resolved.internal_pressure = msg.internal_pressure;
    }
    else {
      resolved.internal_pressure = 0.0
    }

    if (msg.battery !== undefined) {
      resolved.battery = Battery.Resolve(msg.battery)
    }
    else {
      resolved.battery = new Battery()
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

module.exports = VehicleStatus;
