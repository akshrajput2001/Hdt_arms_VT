#!/usr/bin/env python
import rospy
import math
import serial
from sensor_msgs.msg import JointState
from std_msgs.msg import Int16

# duration between call backs
period = 1
low_speed=1

joints = ['r_shoulder_pitch']
	# 'l_shoulder_pitch', 
	# 'l_shoulder_roll', 
	# 'l_shoulder_yaw', 
	# 'l_elbow_pitch', # (+ for extension)
	# 'l_elbow_roll', 
	# 'l_wrist_pitch', 
	# 'l_wrist_yaw', 
	# 'l_thumb_roll', 
	# 'l_thumb_pitch', 
	# 'l_index_yaw', 
	# 'l_ring_yaw']
	# 'r_shoulder_pitch', 
	# 'r_shoulder_roll', 
	# 'r_shoulder_yaw', 
	# 'r_elbow_pitch', # (+ for extension)
	# 'r_elbow_roll', 
	# 'r_wrist_pitch', 
	# 'r_wrist_yaw', 
	# 'r_thumb_roll', 
	# 'r_thumb_pitch', 
	# 'r_index_yaw', 
	# 'r_ring_yaw']
num = len(joints)
vel_cmd=0.15
amp = 0.5
vel_calc=(45*math.pi/180)/amp
pub = rospy.Publisher('/hdt_adroit_coms/joint_cmd', JointState, queue_size=10)
pub_count = rospy.Publisher('/hdt_adroit_coms/cycle_count', Int16, queue_size=10)
#com=serial.Serial()
#com.port=


global t_start
global cycle_count

def timer_callback(event):

	# get commanded position
	d = event.current_real - t_start
	t = d.secs + d.nsecs*1e-9
	
	# Adjust this as needed to send to specific positions
	#pos = math.sin(vel_calc*t)*amp
	#pos = -3.1415926535 / 2
	pos = 0

	# send joint command
	msg = JointState()
	msg.name = joints
	msg.position = [pos]*num
	msg.velocity = [vel_cmd]*num
	msg.effort = [0]*num
	pub.publish(msg)

	# send count of cycles
	cycle_count=int(round((vel_calc*t)/(2*math.pi)))
	

def low_speed_callback(event):
	cycle_msg=Int16()
	cycle_msg.data=cycle_count
	pub_count.publish(cycle_msg)

if __name__ == '__main__':
	rospy.init_node('vt_cycle_test', anonymous=True)
	rospy.Timer(rospy.Duration(period), timer_callback)
	rospy.Timer(rospy.Duration(low_speed), low_speed_callback)
	t_start = rospy.get_rostime()
	cycle_count=0
	rospy.spin()
