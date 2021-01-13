// Auto-generated. Do not edit!

// (in-package vexai.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;

//-----------------------------------------------------------

class Encoder {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.leftEncoderData = null;
      this.rightEncoderData = null;
    }
    else {
      if (initObj.hasOwnProperty('leftEncoderData')) {
        this.leftEncoderData = initObj.leftEncoderData
      }
      else {
        this.leftEncoderData = 0.0;
      }
      if (initObj.hasOwnProperty('rightEncoderData')) {
        this.rightEncoderData = initObj.rightEncoderData
      }
      else {
        this.rightEncoderData = 0.0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type Encoder
    // Serialize message field [leftEncoderData]
    bufferOffset = _serializer.float32(obj.leftEncoderData, buffer, bufferOffset);
    // Serialize message field [rightEncoderData]
    bufferOffset = _serializer.float32(obj.rightEncoderData, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type Encoder
    let len;
    let data = new Encoder(null);
    // Deserialize message field [leftEncoderData]
    data.leftEncoderData = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [rightEncoderData]
    data.rightEncoderData = _deserializer.float32(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 8;
  }

  static datatype() {
    // Returns string type for a message object
    return 'vexai/Encoder';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'bd234730d2f0cac98804ac6dd70ae1ef';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    float32 leftEncoderData
    float32 rightEncoderData
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new Encoder(null);
    if (msg.leftEncoderData !== undefined) {
      resolved.leftEncoderData = msg.leftEncoderData;
    }
    else {
      resolved.leftEncoderData = 0.0
    }

    if (msg.rightEncoderData !== undefined) {
      resolved.rightEncoderData = msg.rightEncoderData;
    }
    else {
      resolved.rightEncoderData = 0.0
    }

    return resolved;
    }
};

module.exports = Encoder;
