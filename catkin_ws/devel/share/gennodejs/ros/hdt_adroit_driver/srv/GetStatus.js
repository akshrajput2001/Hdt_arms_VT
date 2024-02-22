// Auto-generated. Do not edit!

// (in-package hdt_adroit_driver.srv)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;

//-----------------------------------------------------------


//-----------------------------------------------------------

class GetStatusRequest {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
    }
    else {
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type GetStatusRequest
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type GetStatusRequest
    let len;
    let data = new GetStatusRequest(null);
    return data;
  }

  static getMessageSize(object) {
    return 0;
  }

  static datatype() {
    // Returns string type for a service object
    return 'hdt_adroit_driver/GetStatusRequest';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'd41d8cd98f00b204e9800998ecf8427e';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new GetStatusRequest(null);
    return resolved;
    }
};

class GetStatusResponse {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.addr = null;
      this.state = null;
    }
    else {
      if (initObj.hasOwnProperty('addr')) {
        this.addr = initObj.addr
      }
      else {
        this.addr = [];
      }
      if (initObj.hasOwnProperty('state')) {
        this.state = initObj.state
      }
      else {
        this.state = [];
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type GetStatusResponse
    // Serialize message field [addr]
    bufferOffset = _arraySerializer.uint32(obj.addr, buffer, bufferOffset, null);
    // Serialize message field [state]
    bufferOffset = _arraySerializer.uint32(obj.state, buffer, bufferOffset, null);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type GetStatusResponse
    let len;
    let data = new GetStatusResponse(null);
    // Deserialize message field [addr]
    data.addr = _arrayDeserializer.uint32(buffer, bufferOffset, null)
    // Deserialize message field [state]
    data.state = _arrayDeserializer.uint32(buffer, bufferOffset, null)
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += 4 * object.addr.length;
    length += 4 * object.state.length;
    return length + 8;
  }

  static datatype() {
    // Returns string type for a service object
    return 'hdt_adroit_driver/GetStatusResponse';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '030d6b61cd649925cba2336b4a1efa95';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    uint32[] addr
    uint32[] state
    
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new GetStatusResponse(null);
    if (msg.addr !== undefined) {
      resolved.addr = msg.addr;
    }
    else {
      resolved.addr = []
    }

    if (msg.state !== undefined) {
      resolved.state = msg.state;
    }
    else {
      resolved.state = []
    }

    return resolved;
    }
};

module.exports = {
  Request: GetStatusRequest,
  Response: GetStatusResponse,
  md5sum() { return '030d6b61cd649925cba2336b4a1efa95'; },
  datatype() { return 'hdt_adroit_driver/GetStatus'; }
};
