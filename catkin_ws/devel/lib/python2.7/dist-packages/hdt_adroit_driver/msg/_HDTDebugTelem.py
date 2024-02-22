# This Python file uses the following encoding: utf-8
"""autogenerated by genpy from hdt_adroit_driver/HDTDebugTelem.msg. Do not edit."""
import codecs
import sys
python3 = True if sys.hexversion > 0x03000000 else False
import genpy
import struct


class HDTDebugTelem(genpy.Message):
  _md5sum = "d366d58a05688ae09934cbaef1937408"
  _type = "hdt_adroit_driver/HDTDebugTelem"
  _has_header = False  # flag to mark the presence of a Header object
  _full_text = """uint8 index
uint8 hs_samples
int16 ls_var1
int16 ls_var2
int16 ls_var3
int16[] hs_var1
int16[] hs_var2
uint32 crc"""
  __slots__ = ['index','hs_samples','ls_var1','ls_var2','ls_var3','hs_var1','hs_var2','crc']
  _slot_types = ['uint8','uint8','int16','int16','int16','int16[]','int16[]','uint32']

  def __init__(self, *args, **kwds):
    """
    Constructor. Any message fields that are implicitly/explicitly
    set to None will be assigned a default value. The recommend
    use is keyword arguments as this is more robust to future message
    changes.  You cannot mix in-order arguments and keyword arguments.

    The available fields are:
       index,hs_samples,ls_var1,ls_var2,ls_var3,hs_var1,hs_var2,crc

    :param args: complete set of field values, in .msg order
    :param kwds: use keyword arguments corresponding to message field names
    to set specific fields.
    """
    if args or kwds:
      super(HDTDebugTelem, self).__init__(*args, **kwds)
      # message fields cannot be None, assign default values for those that are
      if self.index is None:
        self.index = 0
      if self.hs_samples is None:
        self.hs_samples = 0
      if self.ls_var1 is None:
        self.ls_var1 = 0
      if self.ls_var2 is None:
        self.ls_var2 = 0
      if self.ls_var3 is None:
        self.ls_var3 = 0
      if self.hs_var1 is None:
        self.hs_var1 = []
      if self.hs_var2 is None:
        self.hs_var2 = []
      if self.crc is None:
        self.crc = 0
    else:
      self.index = 0
      self.hs_samples = 0
      self.ls_var1 = 0
      self.ls_var2 = 0
      self.ls_var3 = 0
      self.hs_var1 = []
      self.hs_var2 = []
      self.crc = 0

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
      buff.write(_get_struct_2B3h().pack(_x.index, _x.hs_samples, _x.ls_var1, _x.ls_var2, _x.ls_var3))
      length = len(self.hs_var1)
      buff.write(_struct_I.pack(length))
      pattern = '<%sh'%length
      buff.write(struct.Struct(pattern).pack(*self.hs_var1))
      length = len(self.hs_var2)
      buff.write(_struct_I.pack(length))
      pattern = '<%sh'%length
      buff.write(struct.Struct(pattern).pack(*self.hs_var2))
      _x = self.crc
      buff.write(_get_struct_I().pack(_x))
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
      (_x.index, _x.hs_samples, _x.ls_var1, _x.ls_var2, _x.ls_var3,) = _get_struct_2B3h().unpack(str[start:end])
      start = end
      end += 4
      (length,) = _struct_I.unpack(str[start:end])
      pattern = '<%sh'%length
      start = end
      s = struct.Struct(pattern)
      end += s.size
      self.hs_var1 = s.unpack(str[start:end])
      start = end
      end += 4
      (length,) = _struct_I.unpack(str[start:end])
      pattern = '<%sh'%length
      start = end
      s = struct.Struct(pattern)
      end += s.size
      self.hs_var2 = s.unpack(str[start:end])
      start = end
      end += 4
      (self.crc,) = _get_struct_I().unpack(str[start:end])
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
      buff.write(_get_struct_2B3h().pack(_x.index, _x.hs_samples, _x.ls_var1, _x.ls_var2, _x.ls_var3))
      length = len(self.hs_var1)
      buff.write(_struct_I.pack(length))
      pattern = '<%sh'%length
      buff.write(self.hs_var1.tostring())
      length = len(self.hs_var2)
      buff.write(_struct_I.pack(length))
      pattern = '<%sh'%length
      buff.write(self.hs_var2.tostring())
      _x = self.crc
      buff.write(_get_struct_I().pack(_x))
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
      (_x.index, _x.hs_samples, _x.ls_var1, _x.ls_var2, _x.ls_var3,) = _get_struct_2B3h().unpack(str[start:end])
      start = end
      end += 4
      (length,) = _struct_I.unpack(str[start:end])
      pattern = '<%sh'%length
      start = end
      s = struct.Struct(pattern)
      end += s.size
      self.hs_var1 = numpy.frombuffer(str[start:end], dtype=numpy.int16, count=length)
      start = end
      end += 4
      (length,) = _struct_I.unpack(str[start:end])
      pattern = '<%sh'%length
      start = end
      s = struct.Struct(pattern)
      end += s.size
      self.hs_var2 = numpy.frombuffer(str[start:end], dtype=numpy.int16, count=length)
      start = end
      end += 4
      (self.crc,) = _get_struct_I().unpack(str[start:end])
      return self
    except struct.error as e:
      raise genpy.DeserializationError(e)  # most likely buffer underfill

_struct_I = genpy.struct_I
def _get_struct_I():
    global _struct_I
    return _struct_I
_struct_2B3h = None
def _get_struct_2B3h():
    global _struct_2B3h
    if _struct_2B3h is None:
        _struct_2B3h = struct.Struct("<2B3h")
    return _struct_2B3h