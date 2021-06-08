# This Python file uses the following encoding: utf-8
"""autogenerated by genpy from medusa_msgs/Battery.msg. Do not edit."""
import codecs
import sys
python3 = True if sys.hexversion > 0x03000000 else False
import genpy
import struct

import genpy
import medusa_msgs.msg

class Battery(genpy.Message):
  _md5sum = "c9b87d3791e115e77dfb5d873b235e5d"
  _type = "medusa_msgs/Battery"
  _has_header = False  # flag to mark the presence of a Header object
  _full_text = """#Battery Info

medusa_msgs/NavStatus nav_status
time timestamp
float32 percentage

================================================================================
MSG: medusa_msgs/NavStatus
#NavStatus Info

medusa_msgs/Position position
medusa_msgs/AttitudeEuler attitude
medusa_msgs/VelocityNED linear_velocity
time timestamp
================================================================================
MSG: medusa_msgs/Position
#Position Info

float64 latitude
float64 longitude
float64 depth
float64 altitude
================================================================================
MSG: medusa_msgs/AttitudeEuler
float64 roll
float64 pitch
float64 yaw
================================================================================
MSG: medusa_msgs/VelocityNED
float64 north_vel
float64 east_vel
float64 down_vel"""
  __slots__ = ['nav_status','timestamp','percentage']
  _slot_types = ['medusa_msgs/NavStatus','time','float32']

  def __init__(self, *args, **kwds):
    """
    Constructor. Any message fields that are implicitly/explicitly
    set to None will be assigned a default value. The recommend
    use is keyword arguments as this is more robust to future message
    changes.  You cannot mix in-order arguments and keyword arguments.

    The available fields are:
       nav_status,timestamp,percentage

    :param args: complete set of field values, in .msg order
    :param kwds: use keyword arguments corresponding to message field names
    to set specific fields.
    """
    if args or kwds:
      super(Battery, self).__init__(*args, **kwds)
      # message fields cannot be None, assign default values for those that are
      if self.nav_status is None:
        self.nav_status = medusa_msgs.msg.NavStatus()
      if self.timestamp is None:
        self.timestamp = genpy.Time()
      if self.percentage is None:
        self.percentage = 0.
    else:
      self.nav_status = medusa_msgs.msg.NavStatus()
      self.timestamp = genpy.Time()
      self.percentage = 0.

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
      buff.write(_get_struct_10d4If().pack(_x.nav_status.position.latitude, _x.nav_status.position.longitude, _x.nav_status.position.depth, _x.nav_status.position.altitude, _x.nav_status.attitude.roll, _x.nav_status.attitude.pitch, _x.nav_status.attitude.yaw, _x.nav_status.linear_velocity.north_vel, _x.nav_status.linear_velocity.east_vel, _x.nav_status.linear_velocity.down_vel, _x.nav_status.timestamp.secs, _x.nav_status.timestamp.nsecs, _x.timestamp.secs, _x.timestamp.nsecs, _x.percentage))
    except struct.error as se: self._check_types(struct.error("%s: '%s' when writing '%s'" % (type(se), str(se), str(locals().get('_x', self)))))
    except TypeError as te: self._check_types(ValueError("%s: '%s' when writing '%s'" % (type(te), str(te), str(locals().get('_x', self)))))

  def deserialize(self, str):
    """
    unpack serialized message in str into this message instance
    :param str: byte array of serialized message, ``str``
    """
    if python3:
      codecs.lookup_error("rosmsg").msg_type = self._type
    try:
      if self.nav_status is None:
        self.nav_status = medusa_msgs.msg.NavStatus()
      if self.timestamp is None:
        self.timestamp = genpy.Time()
      end = 0
      _x = self
      start = end
      end += 100
      (_x.nav_status.position.latitude, _x.nav_status.position.longitude, _x.nav_status.position.depth, _x.nav_status.position.altitude, _x.nav_status.attitude.roll, _x.nav_status.attitude.pitch, _x.nav_status.attitude.yaw, _x.nav_status.linear_velocity.north_vel, _x.nav_status.linear_velocity.east_vel, _x.nav_status.linear_velocity.down_vel, _x.nav_status.timestamp.secs, _x.nav_status.timestamp.nsecs, _x.timestamp.secs, _x.timestamp.nsecs, _x.percentage,) = _get_struct_10d4If().unpack(str[start:end])
      self.timestamp.canon()
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
      buff.write(_get_struct_10d4If().pack(_x.nav_status.position.latitude, _x.nav_status.position.longitude, _x.nav_status.position.depth, _x.nav_status.position.altitude, _x.nav_status.attitude.roll, _x.nav_status.attitude.pitch, _x.nav_status.attitude.yaw, _x.nav_status.linear_velocity.north_vel, _x.nav_status.linear_velocity.east_vel, _x.nav_status.linear_velocity.down_vel, _x.nav_status.timestamp.secs, _x.nav_status.timestamp.nsecs, _x.timestamp.secs, _x.timestamp.nsecs, _x.percentage))
    except struct.error as se: self._check_types(struct.error("%s: '%s' when writing '%s'" % (type(se), str(se), str(locals().get('_x', self)))))
    except TypeError as te: self._check_types(ValueError("%s: '%s' when writing '%s'" % (type(te), str(te), str(locals().get('_x', self)))))

  def deserialize_numpy(self, str, numpy):
    """
    unpack serialized message in str into this message instance using numpy for array types
    :param str: byte array of serialized message, ``str``
    :param numpy: numpy python module
    """
    if python3:
      codecs.lookup_error("rosmsg").msg_type = self._type
    try:
      if self.nav_status is None:
        self.nav_status = medusa_msgs.msg.NavStatus()
      if self.timestamp is None:
        self.timestamp = genpy.Time()
      end = 0
      _x = self
      start = end
      end += 100
      (_x.nav_status.position.latitude, _x.nav_status.position.longitude, _x.nav_status.position.depth, _x.nav_status.position.altitude, _x.nav_status.attitude.roll, _x.nav_status.attitude.pitch, _x.nav_status.attitude.yaw, _x.nav_status.linear_velocity.north_vel, _x.nav_status.linear_velocity.east_vel, _x.nav_status.linear_velocity.down_vel, _x.nav_status.timestamp.secs, _x.nav_status.timestamp.nsecs, _x.timestamp.secs, _x.timestamp.nsecs, _x.percentage,) = _get_struct_10d4If().unpack(str[start:end])
      self.timestamp.canon()
      return self
    except struct.error as e:
      raise genpy.DeserializationError(e)  # most likely buffer underfill

_struct_I = genpy.struct_I
def _get_struct_I():
    global _struct_I
    return _struct_I
_struct_10d4If = None
def _get_struct_10d4If():
    global _struct_10d4If
    if _struct_10d4If is None:
        _struct_10d4If = struct.Struct("<10d4If")
    return _struct_10d4If