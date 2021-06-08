// Auto-generated. Do not edit!

// (in-package medusa_msgs.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let Position = require('./Position.js');

//-----------------------------------------------------------

class Maneuver {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.maneuver_name = null;
      this.position = null;
      this.z_units = null;
      this.speed_units = null;
      this.speed = null;
      this.timeout = null;
      this.radius = null;
      this.duration = null;
      this.docking_id = null;
      this.docking_maneuver = null;
      this.waypoint_1 = null;
      this.waypoint_2 = null;
      this.waypoint_3 = null;
      this.track_spacing = null;
      this.across_tracks = null;
    }
    else {
      if (initObj.hasOwnProperty('maneuver_name')) {
        this.maneuver_name = initObj.maneuver_name
      }
      else {
        this.maneuver_name = 0;
      }
      if (initObj.hasOwnProperty('position')) {
        this.position = initObj.position
      }
      else {
        this.position = new Position();
      }
      if (initObj.hasOwnProperty('z_units')) {
        this.z_units = initObj.z_units
      }
      else {
        this.z_units = 0;
      }
      if (initObj.hasOwnProperty('speed_units')) {
        this.speed_units = initObj.speed_units
      }
      else {
        this.speed_units = 0;
      }
      if (initObj.hasOwnProperty('speed')) {
        this.speed = initObj.speed
      }
      else {
        this.speed = 0.0;
      }
      if (initObj.hasOwnProperty('timeout')) {
        this.timeout = initObj.timeout
      }
      else {
        this.timeout = 0.0;
      }
      if (initObj.hasOwnProperty('radius')) {
        this.radius = initObj.radius
      }
      else {
        this.radius = 0.0;
      }
      if (initObj.hasOwnProperty('duration')) {
        this.duration = initObj.duration
      }
      else {
        this.duration = 0.0;
      }
      if (initObj.hasOwnProperty('docking_id')) {
        this.docking_id = initObj.docking_id
      }
      else {
        this.docking_id = 0;
      }
      if (initObj.hasOwnProperty('docking_maneuver')) {
        this.docking_maneuver = initObj.docking_maneuver
      }
      else {
        this.docking_maneuver = 0;
      }
      if (initObj.hasOwnProperty('waypoint_1')) {
        this.waypoint_1 = initObj.waypoint_1
      }
      else {
        this.waypoint_1 = new Position();
      }
      if (initObj.hasOwnProperty('waypoint_2')) {
        this.waypoint_2 = initObj.waypoint_2
      }
      else {
        this.waypoint_2 = new Position();
      }
      if (initObj.hasOwnProperty('waypoint_3')) {
        this.waypoint_3 = initObj.waypoint_3
      }
      else {
        this.waypoint_3 = new Position();
      }
      if (initObj.hasOwnProperty('track_spacing')) {
        this.track_spacing = initObj.track_spacing
      }
      else {
        this.track_spacing = 0.0;
      }
      if (initObj.hasOwnProperty('across_tracks')) {
        this.across_tracks = initObj.across_tracks
      }
      else {
        this.across_tracks = 0.0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type Maneuver
    // Serialize message field [maneuver_name]
    bufferOffset = _serializer.uint8(obj.maneuver_name, buffer, bufferOffset);
    // Serialize message field [position]
    bufferOffset = Position.serialize(obj.position, buffer, bufferOffset);
    // Serialize message field [z_units]
    bufferOffset = _serializer.uint8(obj.z_units, buffer, bufferOffset);
    // Serialize message field [speed_units]
    bufferOffset = _serializer.uint8(obj.speed_units, buffer, bufferOffset);
    // Serialize message field [speed]
    bufferOffset = _serializer.float64(obj.speed, buffer, bufferOffset);
    // Serialize message field [timeout]
    bufferOffset = _serializer.float64(obj.timeout, buffer, bufferOffset);
    // Serialize message field [radius]
    bufferOffset = _serializer.float64(obj.radius, buffer, bufferOffset);
    // Serialize message field [duration]
    bufferOffset = _serializer.float64(obj.duration, buffer, bufferOffset);
    // Serialize message field [docking_id]
    bufferOffset = _serializer.uint8(obj.docking_id, buffer, bufferOffset);
    // Serialize message field [docking_maneuver]
    bufferOffset = _serializer.uint8(obj.docking_maneuver, buffer, bufferOffset);
    // Serialize message field [waypoint_1]
    bufferOffset = Position.serialize(obj.waypoint_1, buffer, bufferOffset);
    // Serialize message field [waypoint_2]
    bufferOffset = Position.serialize(obj.waypoint_2, buffer, bufferOffset);
    // Serialize message field [waypoint_3]
    bufferOffset = Position.serialize(obj.waypoint_3, buffer, bufferOffset);
    // Serialize message field [track_spacing]
    bufferOffset = _serializer.float64(obj.track_spacing, buffer, bufferOffset);
    // Serialize message field [across_tracks]
    bufferOffset = _serializer.float64(obj.across_tracks, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type Maneuver
    let len;
    let data = new Maneuver(null);
    // Deserialize message field [maneuver_name]
    data.maneuver_name = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [position]
    data.position = Position.deserialize(buffer, bufferOffset);
    // Deserialize message field [z_units]
    data.z_units = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [speed_units]
    data.speed_units = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [speed]
    data.speed = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [timeout]
    data.timeout = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [radius]
    data.radius = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [duration]
    data.duration = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [docking_id]
    data.docking_id = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [docking_maneuver]
    data.docking_maneuver = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [waypoint_1]
    data.waypoint_1 = Position.deserialize(buffer, bufferOffset);
    // Deserialize message field [waypoint_2]
    data.waypoint_2 = Position.deserialize(buffer, bufferOffset);
    // Deserialize message field [waypoint_3]
    data.waypoint_3 = Position.deserialize(buffer, bufferOffset);
    // Deserialize message field [track_spacing]
    data.track_spacing = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [across_tracks]
    data.across_tracks = _deserializer.float64(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 181;
  }

  static datatype() {
    // Returns string type for a message object
    return 'medusa_msgs/Maneuver';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '6ee9d1b8dc5a62fdf564b7b7c9695f13';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
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
    const resolved = new Maneuver(null);
    if (msg.maneuver_name !== undefined) {
      resolved.maneuver_name = msg.maneuver_name;
    }
    else {
      resolved.maneuver_name = 0
    }

    if (msg.position !== undefined) {
      resolved.position = Position.Resolve(msg.position)
    }
    else {
      resolved.position = new Position()
    }

    if (msg.z_units !== undefined) {
      resolved.z_units = msg.z_units;
    }
    else {
      resolved.z_units = 0
    }

    if (msg.speed_units !== undefined) {
      resolved.speed_units = msg.speed_units;
    }
    else {
      resolved.speed_units = 0
    }

    if (msg.speed !== undefined) {
      resolved.speed = msg.speed;
    }
    else {
      resolved.speed = 0.0
    }

    if (msg.timeout !== undefined) {
      resolved.timeout = msg.timeout;
    }
    else {
      resolved.timeout = 0.0
    }

    if (msg.radius !== undefined) {
      resolved.radius = msg.radius;
    }
    else {
      resolved.radius = 0.0
    }

    if (msg.duration !== undefined) {
      resolved.duration = msg.duration;
    }
    else {
      resolved.duration = 0.0
    }

    if (msg.docking_id !== undefined) {
      resolved.docking_id = msg.docking_id;
    }
    else {
      resolved.docking_id = 0
    }

    if (msg.docking_maneuver !== undefined) {
      resolved.docking_maneuver = msg.docking_maneuver;
    }
    else {
      resolved.docking_maneuver = 0
    }

    if (msg.waypoint_1 !== undefined) {
      resolved.waypoint_1 = Position.Resolve(msg.waypoint_1)
    }
    else {
      resolved.waypoint_1 = new Position()
    }

    if (msg.waypoint_2 !== undefined) {
      resolved.waypoint_2 = Position.Resolve(msg.waypoint_2)
    }
    else {
      resolved.waypoint_2 = new Position()
    }

    if (msg.waypoint_3 !== undefined) {
      resolved.waypoint_3 = Position.Resolve(msg.waypoint_3)
    }
    else {
      resolved.waypoint_3 = new Position()
    }

    if (msg.track_spacing !== undefined) {
      resolved.track_spacing = msg.track_spacing;
    }
    else {
      resolved.track_spacing = 0.0
    }

    if (msg.across_tracks !== undefined) {
      resolved.across_tracks = msg.across_tracks;
    }
    else {
      resolved.across_tracks = 0.0
    }

    return resolved;
    }
};

// Constants for message
Maneuver.Constants = {
  MANEUVER_NAME_GOTO: 1,
  MANEUVER_NAME_ROWS: 2,
  MANEUVER_NAME_STATION_KEEPING: 3,
  MANEUVER_NAME_DOCK: 4,
  Z_UNITS_DEPTH: 5,
  Z_UNITS_ALTITUDE: 6,
  SPEED_UNITS_METER_PS: 7,
  SPEED_UNITS_RPM: 8,
  SPEED_UNITS_PERCENTAGE: 9,
  VEHICLE_DOCK: 1,
  VEHICLE_UNDOCK: 0,
}

module.exports = Maneuver;
