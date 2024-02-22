// Auto-generated. Do not edit!

// (in-package hdt_adroit_driver.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let std_msgs = _finder('std_msgs');

//-----------------------------------------------------------

class HDTJointState {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.header = null;
      this.name = null;
      this.position = null;
      this.velocity = null;
      this.effort = null;
      this.motor_current = null;
      this.bus_voltage = null;
      this.bus_current = null;
      this.temperature = null;
      this.state = null;
    }
    else {
      if (initObj.hasOwnProperty('header')) {
        this.header = initObj.header
      }
      else {
        this.header = new std_msgs.msg.Header();
      }
      if (initObj.hasOwnProperty('name')) {
        this.name = initObj.name
      }
      else {
        this.name = [];
      }
      if (initObj.hasOwnProperty('position')) {
        this.position = initObj.position
      }
      else {
        this.position = [];
      }
      if (initObj.hasOwnProperty('velocity')) {
        this.velocity = initObj.velocity
      }
      else {
        this.velocity = [];
      }
      if (initObj.hasOwnProperty('effort')) {
        this.effort = initObj.effort
      }
      else {
        this.effort = [];
      }
      if (initObj.hasOwnProperty('motor_current')) {
        this.motor_current = initObj.motor_current
      }
      else {
        this.motor_current = [];
      }
      if (initObj.hasOwnProperty('bus_voltage')) {
        this.bus_voltage = initObj.bus_voltage
      }
      else {
        this.bus_voltage = [];
      }
      if (initObj.hasOwnProperty('bus_current')) {
        this.bus_current = initObj.bus_current
      }
      else {
        this.bus_current = [];
      }
      if (initObj.hasOwnProperty('temperature')) {
        this.temperature = initObj.temperature
      }
      else {
        this.temperature = [];
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
    // Serializes a message object of type HDTJointState
    // Serialize message field [header]
    bufferOffset = std_msgs.msg.Header.serialize(obj.header, buffer, bufferOffset);
    // Serialize message field [name]
    bufferOffset = _arraySerializer.string(obj.name, buffer, bufferOffset, null);
    // Serialize message field [position]
    bufferOffset = _arraySerializer.float64(obj.position, buffer, bufferOffset, null);
    // Serialize message field [velocity]
    bufferOffset = _arraySerializer.float64(obj.velocity, buffer, bufferOffset, null);
    // Serialize message field [effort]
    bufferOffset = _arraySerializer.float64(obj.effort, buffer, bufferOffset, null);
    // Serialize message field [motor_current]
    bufferOffset = _arraySerializer.float64(obj.motor_current, buffer, bufferOffset, null);
    // Serialize message field [bus_voltage]
    bufferOffset = _arraySerializer.float64(obj.bus_voltage, buffer, bufferOffset, null);
    // Serialize message field [bus_current]
    bufferOffset = _arraySerializer.float64(obj.bus_current, buffer, bufferOffset, null);
    // Serialize message field [temperature]
    bufferOffset = _arraySerializer.float64(obj.temperature, buffer, bufferOffset, null);
    // Serialize message field [state]
    bufferOffset = _arraySerializer.int32(obj.state, buffer, bufferOffset, null);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type HDTJointState
    let len;
    let data = new HDTJointState(null);
    // Deserialize message field [header]
    data.header = std_msgs.msg.Header.deserialize(buffer, bufferOffset);
    // Deserialize message field [name]
    data.name = _arrayDeserializer.string(buffer, bufferOffset, null)
    // Deserialize message field [position]
    data.position = _arrayDeserializer.float64(buffer, bufferOffset, null)
    // Deserialize message field [velocity]
    data.velocity = _arrayDeserializer.float64(buffer, bufferOffset, null)
    // Deserialize message field [effort]
    data.effort = _arrayDeserializer.float64(buffer, bufferOffset, null)
    // Deserialize message field [motor_current]
    data.motor_current = _arrayDeserializer.float64(buffer, bufferOffset, null)
    // Deserialize message field [bus_voltage]
    data.bus_voltage = _arrayDeserializer.float64(buffer, bufferOffset, null)
    // Deserialize message field [bus_current]
    data.bus_current = _arrayDeserializer.float64(buffer, bufferOffset, null)
    // Deserialize message field [temperature]
    data.temperature = _arrayDeserializer.float64(buffer, bufferOffset, null)
    // Deserialize message field [state]
    data.state = _arrayDeserializer.int32(buffer, bufferOffset, null)
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += std_msgs.msg.Header.getMessageSize(object.header);
    object.name.forEach((val) => {
      length += 4 + val.length;
    });
    length += 8 * object.position.length;
    length += 8 * object.velocity.length;
    length += 8 * object.effort.length;
    length += 8 * object.motor_current.length;
    length += 8 * object.bus_voltage.length;
    length += 8 * object.bus_current.length;
    length += 8 * object.temperature.length;
    length += 4 * object.state.length;
    return length + 36;
  }

  static datatype() {
    // Returns string type for a message object
    return 'hdt_adroit_driver/HDTJointState';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'de9840a71e6ac8ef70d0fb933aca51fe';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    # This is a message that holds data to describe the state of a set of torque controlled joints. 
    #
    # The state of each joint (revolute or prismatic) is defined by:
    #  * the position of the joint (rad or m),
    #  * the velocity of the joint (rad/s or m/s),
    #  * the effort that is applied in the joint (Nm or N),
    #  * the motor current of the joint (A),
    #  * the bus voltage of the joint (V),
    #  * the bus current of the joint (A), and
    #  * the temperature of the joint (C).
    #
    # Each joint is uniquely identified by its name
    # The header specifies the time at which the joint states were recorded. All the joint states
    # in one message have to be recorded at the same time.
    #
    # This message consists of a multiple arrays, one for each part of the joint state. 
    # The goal is to make each of the fields optional. When e.g. your joints have no
    # effort associated with them, you can leave the effort array empty. 
    #
    # All arrays in this message should have the same size, or be empty.
    # This is the only way to uniquely associate the joint name with the correct
    # states.
    
    
    Header header
    
    string[] name
    float64[] position
    float64[] velocity
    float64[] effort
    float64[] motor_current
    float64[] bus_voltage
    float64[] bus_current
    float64[] temperature
    
    int32[] state
    
    ================================================================================
    MSG: std_msgs/Header
    # Standard metadata for higher-level stamped data types.
    # This is generally used to communicate timestamped data 
    # in a particular coordinate frame.
    # 
    # sequence ID: consecutively increasing ID 
    uint32 seq
    #Two-integer timestamp that is expressed as:
    # * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')
    # * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')
    # time-handling sugar is provided by the client library
    time stamp
    #Frame this data is associated with
    # 0: no frame
    # 1: global frame
    string frame_id
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new HDTJointState(null);
    if (msg.header !== undefined) {
      resolved.header = std_msgs.msg.Header.Resolve(msg.header)
    }
    else {
      resolved.header = new std_msgs.msg.Header()
    }

    if (msg.name !== undefined) {
      resolved.name = msg.name;
    }
    else {
      resolved.name = []
    }

    if (msg.position !== undefined) {
      resolved.position = msg.position;
    }
    else {
      resolved.position = []
    }

    if (msg.velocity !== undefined) {
      resolved.velocity = msg.velocity;
    }
    else {
      resolved.velocity = []
    }

    if (msg.effort !== undefined) {
      resolved.effort = msg.effort;
    }
    else {
      resolved.effort = []
    }

    if (msg.motor_current !== undefined) {
      resolved.motor_current = msg.motor_current;
    }
    else {
      resolved.motor_current = []
    }

    if (msg.bus_voltage !== undefined) {
      resolved.bus_voltage = msg.bus_voltage;
    }
    else {
      resolved.bus_voltage = []
    }

    if (msg.bus_current !== undefined) {
      resolved.bus_current = msg.bus_current;
    }
    else {
      resolved.bus_current = []
    }

    if (msg.temperature !== undefined) {
      resolved.temperature = msg.temperature;
    }
    else {
      resolved.temperature = []
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

module.exports = HDTJointState;
