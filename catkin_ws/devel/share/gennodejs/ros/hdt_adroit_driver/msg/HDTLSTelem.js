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

class HDTLSTelem {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.bus_voltage = null;
      this.bus_current = null;
      this.temperature = null;
    }
    else {
      if (initObj.hasOwnProperty('bus_voltage')) {
        this.bus_voltage = initObj.bus_voltage
      }
      else {
        this.bus_voltage = 0.0;
      }
      if (initObj.hasOwnProperty('bus_current')) {
        this.bus_current = initObj.bus_current
      }
      else {
        this.bus_current = 0.0;
      }
      if (initObj.hasOwnProperty('temperature')) {
        this.temperature = initObj.temperature
      }
      else {
        this.temperature = 0.0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type HDTLSTelem
    // Serialize message field [bus_voltage]
    bufferOffset = _serializer.float32(obj.bus_voltage, buffer, bufferOffset);
    // Serialize message field [bus_current]
    bufferOffset = _serializer.float32(obj.bus_current, buffer, bufferOffset);
    // Serialize message field [temperature]
    bufferOffset = _serializer.float32(obj.temperature, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type HDTLSTelem
    let len;
    let data = new HDTLSTelem(null);
    // Deserialize message field [bus_voltage]
    data.bus_voltage = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [bus_current]
    data.bus_current = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [temperature]
    data.temperature = _deserializer.float32(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 12;
  }

  static datatype() {
    // Returns string type for a message object
    return 'hdt_adroit_driver/HDTLSTelem';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'd6482f2ccdad1eb7d5847af2e454494b';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    float32 bus_voltage
    float32 bus_current
    float32 temperature
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new HDTLSTelem(null);
    if (msg.bus_voltage !== undefined) {
      resolved.bus_voltage = msg.bus_voltage;
    }
    else {
      resolved.bus_voltage = 0.0
    }

    if (msg.bus_current !== undefined) {
      resolved.bus_current = msg.bus_current;
    }
    else {
      resolved.bus_current = 0.0
    }

    if (msg.temperature !== undefined) {
      resolved.temperature = msg.temperature;
    }
    else {
      resolved.temperature = 0.0
    }

    return resolved;
    }
};

module.exports = HDTLSTelem;
