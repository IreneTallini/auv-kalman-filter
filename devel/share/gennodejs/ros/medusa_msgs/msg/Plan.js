// Auto-generated. Do not edit!

// (in-package medusa_msgs.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let Maneuver = require('./Maneuver.js');

//-----------------------------------------------------------

class Plan {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.plan_name = null;
      this.plan_status = null;
      this.num_maneuvers = null;
      this.maneuvers = null;
    }
    else {
      if (initObj.hasOwnProperty('plan_name')) {
        this.plan_name = initObj.plan_name
      }
      else {
        this.plan_name = '';
      }
      if (initObj.hasOwnProperty('plan_status')) {
        this.plan_status = initObj.plan_status
      }
      else {
        this.plan_status = '';
      }
      if (initObj.hasOwnProperty('num_maneuvers')) {
        this.num_maneuvers = initObj.num_maneuvers
      }
      else {
        this.num_maneuvers = 0;
      }
      if (initObj.hasOwnProperty('maneuvers')) {
        this.maneuvers = initObj.maneuvers
      }
      else {
        this.maneuvers = [];
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type Plan
    // Serialize message field [plan_name]
    bufferOffset = _serializer.string(obj.plan_name, buffer, bufferOffset);
    // Serialize message field [plan_status]
    bufferOffset = _serializer.string(obj.plan_status, buffer, bufferOffset);
    // Serialize message field [num_maneuvers]
    bufferOffset = _serializer.int32(obj.num_maneuvers, buffer, bufferOffset);
    // Serialize message field [maneuvers]
    // Serialize the length for message field [maneuvers]
    bufferOffset = _serializer.uint32(obj.maneuvers.length, buffer, bufferOffset);
    obj.maneuvers.forEach((val) => {
      bufferOffset = Maneuver.serialize(val, buffer, bufferOffset);
    });
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type Plan
    let len;
    let data = new Plan(null);
    // Deserialize message field [plan_name]
    data.plan_name = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [plan_status]
    data.plan_status = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [num_maneuvers]
    data.num_maneuvers = _deserializer.int32(buffer, bufferOffset);
    // Deserialize message field [maneuvers]
    // Deserialize array length for message field [maneuvers]
    len = _deserializer.uint32(buffer, bufferOffset);
    data.maneuvers = new Array(len);
    for (let i = 0; i < len; ++i) {
      data.maneuvers[i] = Maneuver.deserialize(buffer, bufferOffset)
    }
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += object.plan_name.length;
    length += object.plan_status.length;
    length += 181 * object.maneuvers.length;
    return length + 16;
  }

  static datatype() {
    // Returns string type for a message object
    return 'medusa_msgs/Plan';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '6eba4a4450477e427676a6c597611625';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    #Plan
    
    string plan_name 
    string plan_status
    int32 num_maneuvers
    medusa_msgs/Maneuver[] maneuvers  #Maneuvers in the plan
    
    
    
    ================================================================================
    MSG: medusa_msgs/Maneuver
    #Single Maneuver Info (Goto [1], StationKeeping [2], Dock [3], Rows_Girona [4])
    
    uint8 maneuver_name 	#Used in maneuvers [1,2,3,4]
    medusa_msgs/Position position #[1,2,3]
    uint8 z_units	#[1,2,3,4]
    uint8 speed_units	#[1,2,4]
    float64 speed	#[1,2,4]
    
    float64 timeout	#[1]
    
    float64 radius 		#[2]
    float64 duration 	#[2]
    
    uint8 docking_id	#[3]
    uint8 docking_maneuver	#[3]
    
    medusa_msgs/Position waypoint_1 #[4]
    medusa_msgs/Position waypoint_2 #[4]
    medusa_msgs/Position waypoint_3 #[4]
    float64 track_spacing  #[4]
    float64 across_tracks  #[4]
    
    
    #Define related to maneuver_name
    uint8 MANEUVER_NAME_GOTO=1
    uint8 MANEUVER_NAME_ROWS=2
    uint8 MANEUVER_NAME_STATION_KEEPING=3
    uint8 MANEUVER_NAME_DOCK=4
    
    #Define related to z_units
    uint8 Z_UNITS_DEPTH=5
    uint8 Z_UNITS_ALTITUDE=6
    
    #Define related to speed_units
    uint8 SPEED_UNITS_METER_PS=7
    uint8 SPEED_UNITS_RPM=8
    uint8 SPEED_UNITS_PERCENTAGE=9
    
    #Define related to the Docking station
    uint8 VEHICLE_DOCK=1
    uint8 VEHICLE_UNDOCK=0
    
    
    ================================================================================
    MSG: medusa_msgs/Position
    #Position Info
    
    float64 latitude
    float64 longitude
    float64 depth
    float64 altitude
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new Plan(null);
    if (msg.plan_name !== undefined) {
      resolved.plan_name = msg.plan_name;
    }
    else {
      resolved.plan_name = ''
    }

    if (msg.plan_status !== undefined) {
      resolved.plan_status = msg.plan_status;
    }
    else {
      resolved.plan_status = ''
    }

    if (msg.num_maneuvers !== undefined) {
      resolved.num_maneuvers = msg.num_maneuvers;
    }
    else {
      resolved.num_maneuvers = 0
    }

    if (msg.maneuvers !== undefined) {
      resolved.maneuvers = new Array(msg.maneuvers.length);
      for (let i = 0; i < resolved.maneuvers.length; ++i) {
        resolved.maneuvers[i] = Maneuver.Resolve(msg.maneuvers[i]);
      }
    }
    else {
      resolved.maneuvers = []
    }

    return resolved;
    }
};

module.exports = Plan;
