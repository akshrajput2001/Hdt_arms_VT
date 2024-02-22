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

class HDTMSTelem {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.var1 = null;
      this.var2 = null;
      this.var3 = null;
      this.var4 = null;
    }
    else {
      if (initObj.hasOwnProperty('var1')) {
        this.var1 = initObj.var1
      }
      else {
        this.var1 = 0;
      }
      if (initObj.hasOwnProperty('var2')) {
        this.var2 = initObj.var2
      }
      else {
        this.var2 = 0;
      }
      if (initObj.hasOwnProperty('var3')) {
        this.var3 = initObj.var3
      }
      else {
        this.var3 = 0;
      }
      if (initObj.hasOwnProperty('var4')) {
        this.var4 = initObj.var4
      }
      else {
        this.var4 = 0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type HDTMSTelem
    // Serialize message field [var1]
    bufferOffset = _serializer.int16(obj.var1, buffer, bufferOffset);
    // Serialize message field [var2]
    bufferOffset = _serializer.int16(obj.var2, buffer, bufferOffset);
    // Serialize message field [var3]
    bufferOffset = _serializer.int16(obj.var3, buffer, bufferOffset);
    // Serialize message field [var4]
    bufferOffset = _serializer.int16(obj.var4, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type HDTMSTelem
    let len;
    let data = new HDTMSTelem(null);
    // Deserialize message field [var1]
    data.var1 = _deserializer.int16(buffer, bufferOffset);
    // Deserialize message field [var2]
    data.var2 = _deserializer.int16(buffer, bufferOffset);
    // Deserialize message field [var3]
    data.var3 = _deserializer.int16(buffer, bufferOffset);
    // Deserialize message field [var4]
    data.var4 = _deserializer.int16(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 8;
  }

  static datatype() {
    // Returns string type for a message object
    return 'hdt_adroit_driver/HDTMSTelem';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '6dc00f8899a8207abb48266da6b58569';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    int16 var1
    int16 var2
    int16 var3
    int16 var4
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new HDTMSTelem(null);
    if (msg.var1 !== undefined) {
      resolved.var1 = msg.var1;
    }
    else {
      resolved.var1 = 0
    }

    if (msg.var2 !== undefined) {
      resolved.var2 = msg.var2;
    }
    else {
      resolved.var2 = 0
    }

    if (msg.var3 !== undefined) {
      resolved.var3 = msg.var3;
    }
    else {
      resolved.var3 = 0
    }

    if (msg.var4 !== undefined) {
      resolved.var4 = msg.var4;
    }
    else {
      resolved.var4 = 0
    }

    return resolved;
    }
};

module.exports = HDTMSTelem;
