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

class Range {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.num_nodes = null;
      this.node_ids = null;
      this.freq = null;
      this.node = null;
      this.time = null;
      this.bearing = null;
      this.distance = null;
      this.lat_node = null;
      this.lon_node = null;
      this.depth_node = null;
    }
    else {
      if (initObj.hasOwnProperty('num_nodes')) {
        this.num_nodes = initObj.num_nodes
      }
      else {
        this.num_nodes = 0;
      }
      if (initObj.hasOwnProperty('node_ids')) {
        this.node_ids = initObj.node_ids
      }
      else {
        this.node_ids = [];
      }
      if (initObj.hasOwnProperty('freq')) {
        this.freq = initObj.freq
      }
      else {
        this.freq = 0.0;
      }
      if (initObj.hasOwnProperty('node')) {
        this.node = initObj.node
      }
      else {
        this.node = 0;
      }
      if (initObj.hasOwnProperty('time')) {
        this.time = initObj.time
      }
      else {
        this.time = 0.0;
      }
      if (initObj.hasOwnProperty('bearing')) {
        this.bearing = initObj.bearing
      }
      else {
        this.bearing = 0.0;
      }
      if (initObj.hasOwnProperty('distance')) {
        this.distance = initObj.distance
      }
      else {
        this.distance = 0.0;
      }
      if (initObj.hasOwnProperty('lat_node')) {
        this.lat_node = initObj.lat_node
      }
      else {
        this.lat_node = 0.0;
      }
      if (initObj.hasOwnProperty('lon_node')) {
        this.lon_node = initObj.lon_node
      }
      else {
        this.lon_node = 0.0;
      }
      if (initObj.hasOwnProperty('depth_node')) {
        this.depth_node = initObj.depth_node
      }
      else {
        this.depth_node = 0.0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type Range
    // Serialize message field [num_nodes]
    bufferOffset = _serializer.uint8(obj.num_nodes, buffer, bufferOffset);
    // Serialize message field [node_ids]
    bufferOffset = _arraySerializer.uint8(obj.node_ids, buffer, bufferOffset, null);
    // Serialize message field [freq]
    bufferOffset = _serializer.float64(obj.freq, buffer, bufferOffset);
    // Serialize message field [node]
    bufferOffset = _serializer.uint8(obj.node, buffer, bufferOffset);
    // Serialize message field [time]
    bufferOffset = _serializer.float64(obj.time, buffer, bufferOffset);
    // Serialize message field [bearing]
    bufferOffset = _serializer.float64(obj.bearing, buffer, bufferOffset);
    // Serialize message field [distance]
    bufferOffset = _serializer.float64(obj.distance, buffer, bufferOffset);
    // Serialize message field [lat_node]
    bufferOffset = _serializer.float64(obj.lat_node, buffer, bufferOffset);
    // Serialize message field [lon_node]
    bufferOffset = _serializer.float64(obj.lon_node, buffer, bufferOffset);
    // Serialize message field [depth_node]
    bufferOffset = _serializer.float64(obj.depth_node, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type Range
    let len;
    let data = new Range(null);
    // Deserialize message field [num_nodes]
    data.num_nodes = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [node_ids]
    data.node_ids = _arrayDeserializer.uint8(buffer, bufferOffset, null)
    // Deserialize message field [freq]
    data.freq = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [node]
    data.node = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [time]
    data.time = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [bearing]
    data.bearing = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [distance]
    data.distance = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [lat_node]
    data.lat_node = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [lon_node]
    data.lon_node = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [depth_node]
    data.depth_node = _deserializer.float64(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += object.node_ids.length;
    return length + 62;
  }

  static datatype() {
    // Returns string type for a message object
    return 'medusa_msgs/Range';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '7994b469669796bf792ad7e6f0cece00';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    #Range between nodes
    
    #RangeGet
    uint8 num_nodes #Number of node(s) to which estimate the range
    uint8[] node_ids #Id(s) of the target node(s)
    float64 freq #Update frequency in Hertz
    
    #Range
    uint8 node #Id of the target node
    float64 time  	#Estimated travel time to the target node in seconds
    float64 bearing #Estimated bearing angle to the target node in degrees
    float64 distance
    float64 lat_node
    float64 lon_node
    float64 depth_node
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new Range(null);
    if (msg.num_nodes !== undefined) {
      resolved.num_nodes = msg.num_nodes;
    }
    else {
      resolved.num_nodes = 0
    }

    if (msg.node_ids !== undefined) {
      resolved.node_ids = msg.node_ids;
    }
    else {
      resolved.node_ids = []
    }

    if (msg.freq !== undefined) {
      resolved.freq = msg.freq;
    }
    else {
      resolved.freq = 0.0
    }

    if (msg.node !== undefined) {
      resolved.node = msg.node;
    }
    else {
      resolved.node = 0
    }

    if (msg.time !== undefined) {
      resolved.time = msg.time;
    }
    else {
      resolved.time = 0.0
    }

    if (msg.bearing !== undefined) {
      resolved.bearing = msg.bearing;
    }
    else {
      resolved.bearing = 0.0
    }

    if (msg.distance !== undefined) {
      resolved.distance = msg.distance;
    }
    else {
      resolved.distance = 0.0
    }

    if (msg.lat_node !== undefined) {
      resolved.lat_node = msg.lat_node;
    }
    else {
      resolved.lat_node = 0.0
    }

    if (msg.lon_node !== undefined) {
      resolved.lon_node = msg.lon_node;
    }
    else {
      resolved.lon_node = 0.0
    }

    if (msg.depth_node !== undefined) {
      resolved.depth_node = msg.depth_node;
    }
    else {
      resolved.depth_node = 0.0
    }

    return resolved;
    }
};

module.exports = Range;
