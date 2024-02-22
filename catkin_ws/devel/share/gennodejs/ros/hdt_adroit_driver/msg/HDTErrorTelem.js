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

class HDTErrorTelem {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.error_code = null;
      this.error_severity = null;
      this.error_value = null;
    }
    else {
      if (initObj.hasOwnProperty('error_code')) {
        this.error_code = initObj.error_code
      }
      else {
        this.error_code = 0;
      }
      if (initObj.hasOwnProperty('error_severity')) {
        this.error_severity = initObj.error_severity
      }
      else {
        this.error_severity = 0;
      }
      if (initObj.hasOwnProperty('error_value')) {
        this.error_value = initObj.error_value
      }
      else {
        this.error_value = 0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type HDTErrorTelem
    // Serialize message field [error_code]
    bufferOffset = _serializer.uint8(obj.error_code, buffer, bufferOffset);
    // Serialize message field [error_severity]
    bufferOffset = _serializer.uint8(obj.error_severity, buffer, bufferOffset);
    // Serialize message field [error_value]
    bufferOffset = _serializer.uint32(obj.error_value, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type HDTErrorTelem
    let len;
    let data = new HDTErrorTelem(null);
    // Deserialize message field [error_code]
    data.error_code = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [error_severity]
    data.error_severity = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [error_value]
    data.error_value = _deserializer.uint32(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 6;
  }

  static datatype() {
    // Returns string type for a message object
    return 'hdt_adroit_driver/HDTErrorTelem';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '92f6f8b505781f873bd2236cd504301c';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    uint8 error_code
    uint8 error_severity
    uint32 error_value
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new HDTErrorTelem(null);
    if (msg.error_code !== undefined) {
      resolved.error_code = msg.error_code;
    }
    else {
      resolved.error_code = 0
    }

    if (msg.error_severity !== undefined) {
      resolved.error_severity = msg.error_severity;
    }
    else {
      resolved.error_severity = 0
    }

    if (msg.error_value !== undefined) {
      resolved.error_value = msg.error_value;
    }
    else {
      resolved.error_value = 0
    }

    return resolved;
    }
};

module.exports = HDTErrorTelem;
