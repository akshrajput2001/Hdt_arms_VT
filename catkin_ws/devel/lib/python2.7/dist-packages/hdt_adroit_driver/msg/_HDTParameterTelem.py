# This Python file uses the following encoding: utf-8
"""autogenerated by genpy from hdt_adroit_driver/HDTParameterTelem.msg. Do not edit."""
import codecs
import sys
python3 = True if sys.hexversion > 0x03000000 else False
import genpy
import struct


class HDTParameterTelem(genpy.Message):
  _md5sum = "9c3ccffb91d861d89d3d9dcfa704f7e8"
  _type = "hdt_adroit_driver/HDTParameterTelem"
  _has_header = False  # flag to mark the presence of a Header object
  _full_text = """uint8 head
uint16 index
uint8 sub_index
uint32 data"""
  __slots__ = ['head','index','sub_index','data']
  _slot_types = ['uint8','uint16','uint8','uint32']

  def __init__(self, *args, **kwds):
    """
    Constructor. Any message fields that are implicitly/explicitly
    set to None will be assigned a default value. The recommend
    use is keyword arguments as this is more robust to future message
    changes.  You cannot mix in-order arguments and keyword arguments.

    The available fields are:
       head,index,sub_index,data

    :param args: complete set of field values, in .msg order
    :param kwds: use keyword arguments corresponding to message field names
    to set specific fields.
    """
    if args or kwds:
      super(HDTParameterTelem, self).__init__(*args, **kwds)
      # message fields cannot be None, assign default values for those that are
      if self.head is None:
        self.head = 0
      if self.index is None:
        self.index = 0
      if self.sub_index is None:
        self.sub_index = 0
      if self.data is None:
        self.data = 0
    else:
      self.head = 0
      self.index = 0
      self.sub_index = 0
      self.data = 0

  def _get_types(self):
    """
    internal API method
    """
    return self._slot_types

  def serialize(self, buff):
    """
    serialize message into buffer
    :param buff: buffer, ``StringIO``
    """
    try:
      _x = self
      buff.write(_get_struct_BHBI().pack(_x.head, _x.index, _x.sub_index, _x.data))
    except struct.error as se: self._check_types(struct.error("%s: '%s' when writing '%s'" % (type(se), str(se), str(locals().get('_x', self)))))
    except TypeError as te: self._check_types(ValueError("%s: '%s' when writing '%s'" % (type(te), str(te), str(locals().get('_x', self)))))

  def deserialize(self, str):
    """
    unpack serialized message in str into this message instance
    :param str: byte array of serialized message, ``str``
    """
    codecs.lookup_error("rosmsg").msg_type = self._type
    try:
      end = 0
      _x = self
      start = end
      end += 8
      (_x.head, _x.index, _x.sub_index, _x.data,) = _get_struct_BHBI().unpack(str[start:end])
      return self
    except struct.error as e:
      raise genpy.DeserializationError(e)  # most likely buffer underfill


  def serialize_numpy(self, buff, numpy):
    """
    serialize message with numpy array types into buffer
    :param buff: buffer, ``StringIO``
    :param numpy: numpy python module
    """
    try:
      _x = self
      buff.write(_get_struct_BHBI().pack(_x.head, _x.index, _x.sub_index, _x.data))
    except struct.error as se: self._check_types(struct.error("%s: '%s' when writing '%s'" % (type(se), str(se), str(locals().get('_x', self)))))
    except TypeError as te: self._check_types(ValueError("%s: '%s' when writing '%s'" % (type(te), str(te), str(locals().get('_x', self)))))

  def deserialize_numpy(self, str, numpy):
    """
    unpack serialized message in str into this message instance using numpy for array types
    :param str: byte array of serialized message, ``str``
    :param numpy: numpy python module
    """
    codecs.lookup_error("rosmsg").msg_type = self._type
    try:
      end = 0
      _x = self
      start = end
      end += 8
      (_x.head, _x.index, _x.sub_index, _x.data,) = _get_struct_BHBI().unpack(str[start:end])
      return self
    except struct.error as e:
      raise genpy.DeserializationError(e)  # most likely buffer underfill

_struct_I = genpy.struct_I
def _get_struct_I():
    global _struct_I
    return _struct_I
_struct_BHBI = None
def _get_struct_BHBI():
    global _struct_BHBI
    if _struct_BHBI is None:
        _struct_BHBI = struct.Struct("<BHBI")
    return _struct_BHBI