#!/usr/bin/env python
# -*- coding: utf-8 -*-

import time
import rospy
import numpy as np
from sensor_msgs.msg import JointState

# use this file to move arm back to zero position or home position after arm stops emergently
#!/usr/bin/env python

def callback(msg2):
    pos=msg2.position
    vel=msg2.velocity
    eff=msg2.effort
    pos_left=np.array([pos[0],pos[1],pos[2],pos[3],pos[4],pos[5],pos[6],pos[7],pos[8],pos[9],pos[10]])
    vel_left=np.array([vel[0],vel[1],vel[2],vel[3],vel[4],vel[5],vel[6],vel[7],vel[8],vel[9],vel[10]])
    eff_left=np.array([eff[0],eff[1],eff[2],eff[3],eff[4],eff[5],eff[6],eff[7],eff[8],eff[9],eff[10]])
    pos_right=np.array([pos[11],pos[12],pos[13],pos[14],pos[15],pos[16],pos[17],pos[18],pos[19],pos[20],pos[21]])
    vel_right=np.array([vel[11],vel[12],vel[13],vel[14],vel[15],vel[16],vel[17],vel[18],vel[19],vel[20],vel[21]])
    eff_right=np.array([eff[11],eff[12],eff[13],eff[14],eff[15],eff[16],eff[17],eff[18],eff[19],eff[20],eff[21]])
    #rospy.loginfo('pos: {}, vel:{}, eff:{},' .format(pos[0],vel[0],eff[0]))
    joint_pub(pos_left,vel_left,eff_left)

    return(pos, vel, eff)

def joint_pub(p,v,e):
        joint_pub = rospy.Publisher("/hdt_adroit_coms/joint_cmd", JointState, queue_size=5)
        r = rospy.Rate(10)

        joint_names = ['left/index_prox', 'left/joint1', 'left/joint2', 'left/joint3', 'left/joint4', 'left/joint5', 'left/joint6', 'left/joint7','left/ring_prox', 'left/thumb_base', 'left/thumb_prox']
        
        #hand stretch pose
        home_position = np.array([0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0])
        #thumb base folded pose
        home_position2 = np.array([0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, -1.87, 0.0])
        # hand fist pose
        home_position3 = np.array([1.87, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 1.87, -1.87, 1.87])

        raw_input("Press Enter to move home position")

        cur_position = p # automatically updated. Don't touch it
        target_position = home_position

        msg = JointState()
        msg.header.stamp = rospy.Time.now()
        msg.name = joint_names
        msg.position = target_position
        msg.velocity = (target_position - cur_position) / 4.0 # 2 sec

        t0 = time.time()
        while time.time() - t0 < 4.0 and not rospy.is_shutdown():
            joint_pub.publish(msg)
            r.sleep()

def main():

    while not rospy.is_shutdown():
        rospy.init_node('grasp_pub_sub_test', anonymous=True)
        sub=rospy.Subscriber("/hdt_adroit_coms/joint_telem",JointState,callback)


if __name__ == '__main__':
    main()
