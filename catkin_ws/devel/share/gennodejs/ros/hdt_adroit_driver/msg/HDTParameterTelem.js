// Auto-generated. Do not edit!

// (in-package hdt_adroit_driver.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;

//-----------------------------------------------------------

class HDTParameterTelem {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.head = null;
      this.index = null;
      this.sub_index = null;
      this.data = null;
    }
    else {
      if (initObj.hasOwnProperty('head')) {
        this.head = initObj.head
      }
      else {
        this.head = 0;
      }
      if (initObj.hasOwnProperty('index')) {
        this.index = initObj.index
      }
      else {
        this.index = 0;
      }
      if (initObj.hasOwnProperty('sub_index')) {
        this.sub_index = initObj.sub_index
      }
      else {
        this.sub_index = 0;
      }
      if (initObj.hasOwnProperty('data')) {
        this.data = initObj.data
      }
      else {
        this.data = 0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type HDTParameterTelem
    // Serialize message field [head]
    bufferOffset = _serializer.uint8(obj.head, buffer, bufferOffset);
    // Serialize message field [index]
    bufferOffset = _serializer.uint16(obj.index, buffer, bufferOffset);
    // Serialize message field [sub_index]
    bufferOffset = _serializer.uint8(obj.sub_index, buffer, bufferOffset);
    // Serialize message field [data]
    bufferOffset = _serializer.uint32(obj.data, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type HDTParameterTelem
    let len;
    let data = new HDTParameterTelem(null);
    // Deserialize message field [head]
    data.head = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [index]
    data.index = _deserializer.uint16(buffer, bufferOffset);
    // Deserialize message field [sub_index]
    data.sub_index = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [data]
    data.data = _deserializer.uint32(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 8;
  }

  static datatype() {
    // Returns string type for a message object
    return 'hdt_adroit_driver/HDTParameterTelem';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '9c3ccffb91d861d89d3d9dcfa704f7e8';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    uint8 head
    uint16 index
    uint8 sub_index
    uint32 data
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new HDTParameterTelem(null);
    if (msg.head !== undefined) {
      resolved.head = msg.head;
    }
    else {
      resolved.head = 0
    }

    if (msg.index !== undefined) {
      resolved.index = msg.index;
    }
    else {
      resolved.index = 0
    }

    if (msg.sub_index !== undefined) {
      resolved.sub_index = msg.sub_index;
    }
    else {
      resolved.sub_index = 0
    }

    if (msg.data !== undefined) {
      resolved.data = msg.data;
    }
    else {
      resolved.data = 0
    }

    return resolved;
    }
};

module.exports = HDTParameterTelem;
