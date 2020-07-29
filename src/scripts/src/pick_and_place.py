#!/usr/bin/env python

import sys
import cProfile, pstats
import time 
import rospy
import roslib; roslib.load_manifest("moveit_python")
import moveit_commander
import moveit_msgs.msg
import baxter_interface
import geometry_msgs.msg
import argparse
import struct
import copy
import rospkg
from moveit_python import PlanningSceneInterface, MoveGroupInterface
from geometry_msgs.msg import PoseStamped, PoseArray
from sensor_msgs.msg import Range
from moveit_python.geometry import rotate_pose_msg_by_euler_angles
from math import pi, sqrt
from operator import itemgetter
from std_msgs.msg import String
from copy import deepcopy

from gazebo_msgs.srv import (
    SpawnModel,
    DeleteModel,
)
from geometry_msgs.msg import (
    PoseStamped,
    Pose,
    Point,
    Quaternion,
)
from std_msgs.msg import (
    Header,
    Empty,
)

from baxter_core_msgs.srv import (
    SolvePositionIK,
    SolvePositionIKRequest,
)

rospy.init_node("pnp")
# Initialize the move_group API.
moveit_commander.roscpp_initialize(sys.argv)
# Connect the arms to the move group.
both_arms = moveit_commander.MoveGroupCommander('both_arms')
right_arm = moveit_commander.MoveGroupCommander('right_arm')
left_arm = moveit_commander.MoveGroupCommander('left_arm')
# Allow replanning to increase the odds of a solution.
right_arm.allow_replanning(True)
left_arm.allow_replanning(True)
# Set the arms reference frames.
right_arm.set_pose_reference_frame('base')
left_arm.set_pose_reference_frame('base')
# Create baxter_interface limb instance.
leftarm = baxter_interface.limb.Limb('left')
rightarm = baxter_interface.limb.Limb('right')
# Initialize the planning scene interface.
p = PlanningSceneInterface("base")
# Create baxter_interface gripper instance.
leftgripper = baxter_interface.Gripper('left')
rightgripper = baxter_interface.Gripper('right')
leftgripper.open()
rightgripper.open()

def load_gazebo_models(table_pose=Pose(position=Point(x=0.7, y=0.0, z=0.0)),
                       table_reference_frame="world",
                       block_pose1=Pose(position=Point(x=0.6725, y=0.0765, z=-0.135)),
                       block_pose2=Pose(position=Point(x=0.55, y=-0.2, z=-0.135)),
                       block_pose3=Pose(position=Point(x=0.7, y=-0.1, z=-0.135)),
                       block_pose4=Pose(position=Point(x=0.58, y=-0.03, z=-0.135)),
                       block_reference_frame="base"):
    # Get Models' Path.
    model_path = rospkg.RosPack().get_path('baxter_pnp_one_arm_cartesian_sim')+"/models/"
    # Load Table SDF.
    table_xml = ''
    with open (model_path + "cafe_table/model.sdf", "r") as table_file:
        table_xml=table_file.read().replace('\n', '')
    # Load Block1 URDF.
    block_xml1 = ''
    with open (model_path + "block/model1.urdf", "r") as block_file:
        block_xml1=block_file.read().replace('\n', '')
    # Load Block2 URDF.
    block_xml2 = ''
    with open (model_path + "block/model2.urdf", "r") as block_file:
        block_xml2=block_file.read().replace('\n', '')
    # Load Block3 URDF.
    block_xml3 = ''
    with open (model_path + "block/model3.urdf", "r") as block_file:
        block_xml3=block_file.read().replace('\n', '')
    # Load Block4 URDF.
    block_xml4 = ''
    with open (model_path + "block/model4.urdf", "r") as block_file:
        block_xml4=block_file.read().replace('\n', '')
    # Spawn Table SDF.
    rospy.wait_for_service('/gazebo/spawn_sdf_model')
    try:
        spawn_sdf = rospy.ServiceProxy('/gazebo/spawn_sdf_model', SpawnModel)
        resp_sdf = spawn_sdf("cafe_table", table_xml, "/",
                             table_pose, table_reference_frame)
    except rospy.ServiceException as e:
        rospy.logerr("Spawn SDF service call failed: {0}".format(e))
    # Spawn Block1 URDF.
    rospy.wait_for_service('/gazebo/spawn_urdf_model')
    try:
        spawn_urdf = rospy.ServiceProxy('/gazebo/spawn_urdf_model', SpawnModel)
        resp_urdf = spawn_urdf("block1", block_xml1, "/",
                               block_pose1, block_reference_frame)
    except rospy.ServiceException as e:
        rospy.logerr("Spawn URDF service call failed: {0}".format(e))

def delete_gazebo_models():
    # This will be called on ROS Exit, deleting Gazebo models.
    # Do not wait for the Gazebo Delete Model service, since
    # Gazebo should already be running. If the service is not
    # available since Gazebo has been killed, it is fine to error out.
    try:
        delete_model = rospy.ServiceProxy('/gazebo/delete_model', DeleteModel)
        resp_delete = delete_model("cafe_table")
        resp_delete = delete_model("block1")
    except rospy.ServiceException as e:
        rospy.loginfo("Delete Model service call failed: {0}".format(e))


def picknplace():

    # Define variables.
    table_size_x = 1.0
    table_size_y = 0.929999123509
    table_size_z = 0.75580154342
    center_x = 0.6
    center_y = -0.0441882472378
    center_z = -0.52509922829
    # The distance from the zero point in Moveit to the ground is 0.903 m.
    # The value is not allways the same. (look in Readme)
    center_z_cube= -0.903+table_size_z+0.0275/2
    j=0
    k=0
    u = 0
    locs_x = []

    # Load Gazebo Models via Spawning Services.
    load_gazebo_models()



def main():
    picknplace()
    return 0

if __name__ == '__main__':
    sys.exit(main())