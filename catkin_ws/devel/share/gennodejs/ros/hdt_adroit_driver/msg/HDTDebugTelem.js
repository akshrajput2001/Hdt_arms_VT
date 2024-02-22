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

class HDTDebugTelem {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.index = null;
      this.hs_samples = null;
      this.ls_var1 = null;
      this.ls_var2 = null;
      this.ls_var3 = null;
      this.hs_var1 = null;
      this.hs_var2 = null;
      this.crc = null;
    }
    else {
      if (initObj.hasOwnProperty('index')) {
        this.index = initObj.index
      }
      else {
        this.index = 0;
      }
      if (initObj.hasOwnProperty('hs_samples')) {
        this.hs_samples = initObj.hs_samples
      }
      else {
        this.hs_samples = 0;
      }
      if (initObj.hasOwnProperty('ls_var1')) {
        this.ls_var1 = initObj.ls_var1
      }
      else {
        this.ls_var1 = 0;
      }
      if (initObj.hasOwnProperty('ls_var2')) {
        this.ls_var2 = initObj.ls_var2
      }
      else {
        this.ls_var2 = 0;
      }
      if (initObj.hasOwnProperty('ls_var3')) {
        this.ls_var3 = initObj.ls_var3
      }
      else {
        this.ls_var3 = 0;
      }
      if (initObj.hasOwnProperty('hs_var1')) {
        this.hs_var1 = initObj.hs_var1
      }
      else {
        this.hs_var1 = [];
      }
      if (initObj.hasOwnProperty('hs_var2')) {
        this.hs_var2 = initObj.hs_var2
      }
      else {
        this.hs_var2 = [];
      }
      if (initObj.hasOwnProperty('crc')) {
        this.crc = initObj.crc
      }
      else {
        this.crc = 0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type HDTDebugTelem
    // Serialize message field [index]
    bufferOffset = _serializer.uint8(obj.index, buffer, bufferOffset);
    // Serialize message field [hs_samples]
    bufferOffset = _serializer.uint8(obj.hs_samples, buffer, bufferOffset);
    // Serialize message field [ls_var1]
    bufferOffset = _serializer.int16(obj.ls_var1, buffer, bufferOffset);
    // Serialize message field [ls_var2]
    bufferOffset = _serializer.int16(obj.ls_var2, buffer, bufferOffset);
    // Serialize message field [ls_var3]
    bufferOffset = _serializer.int16(obj.ls_var3, buffer, bufferOffset);
    // Serialize message field [hs_var1]
    bufferOffset = _arraySerializer.int16(obj.hs_var1, buffer, bufferOffset, null);
    // Serialize message field [hs_var2]
    bufferOffset = _arraySerializer.int16(obj.hs_var2, buffer, bufferOffset, null);
    // Serialize message field [crc]
    bufferOffset = _serializer.uint32(obj.crc, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type HDTDebugTelem
    let len;
    let data = new HDTDebugTelem(null);
    // Deserialize message field [index]
    data.index = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [hs_samples]
    data.hs_samples = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [ls_var1]
    data.ls_var1 = _deserializer.int16(buffer, bufferOffset);
    // Deserialize message field [ls_var2]
    data.ls_var2 = _deserializer.int16(buffer, bufferOffset);
    // Deserialize message field [ls_var3]
    data.ls_var3 = _deserializer.int16(buffer, bufferOffset);
    // Deserialize message field [hs_var1]
    data.hs_var1 = _arrayDeserializer.int16(buffer, bufferOffset, null)
    // Deserialize message field [hs_var2]
    data.hs_var2 = _arrayDeserializer.int16(buffer, bufferOffset, null)
    // Deserialize message field [crc]
    data.crc = _deserializer.uint32(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += 2 * object.hs_var1.length;
    length += 2 * object.hs_var2.length;
    return length + 20;
  }

  static datatype() {
    // Returns string type for a message object
    return 'hdt_adroit_driver/HDTDebugTelem';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'd366d58a05688ae09934cbaef1937408';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    uint8 index
    uint8 hs_samples
    int16 ls_var1
    int16 ls_var2
    int16 ls_var3
    int16[] hs_var1
    int16[] hs_var2
    uint32 crc
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new HDTDebugTelem(null);
    if (msg.index !== undefined) {
      resolved.index = msg.index;
    }
    else {
      resolved.index = 0
    }

    if (msg.hs_samples !== undefined) {
      resolved.hs_samples = msg.hs_samples;
    }
    else {
      resolved.hs_samples = 0
    }

    if (msg.ls_var1 !== undefined) {
      resolved.ls_var1 = msg.ls_var1;
    }
    else {
      resolved.ls_var1 = 0
    }

    if (msg.ls_var2 !== undefined) {
      resolved.ls_var2 = msg.ls_var2;
    }
    else {
      resolved.ls_var2 = 0
    }

    if (msg.ls_var3 !== undefined) {
      resolved.ls_var3 = msg.ls_var3;
    }
    else {
      resolved.ls_var3 = 0
    }

    if (msg.hs_var1 !== undefined) {
      resolved.hs_var1 = msg.hs_var1;
    }
    else {
      resolved.hs_var1 = []
    }

    if (msg.hs_var2 !== undefined) {
      resolved.hs_var2 = msg.hs_var2;
    }
    else {
      resolved.hs_var2 = []
    }

    if (msg.crc !== undefined) {
      resolved.crc = msg.crc;
    }
    else {
      resolved.crc = 0
    }

    return resolved;
    }
};

module.exports = HDTDebugTelem;
