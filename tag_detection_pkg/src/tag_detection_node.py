#!/usr/bin/env python3

"""
This node will handle all coordinate transformations and tf frames.
We will predefine a certain tag as the origin of our coordinate system,
and will ensure several tags with known relative poses are spread such that
at least one will be visible at any given time. This will allow the camera
to give pose of the arm relative to the coordinate system without needing
a precise camera mount position.

The goal of this node is to find and publish the pose of the end-
effector of the arm (with one or more apriltags on it).
This can be used as the "measurement" for an EKF whose control inputs
are the commands provided to the arm, and it will provide an estimate
of the true end effector position. This will help us to ensure trajectories
for drawing are being followed as well as possible.
"""

import rospy
from apriltag_ros.apriltag_ros.msg import AprilTagDetectionArray
import numpy as np
from scipy.linalg import inv
import tf2_ros
from scipy.spatial.transform import Rotation as R

############ GLOBAL VARIABLES ###################
DT = 1 # timer period.

# one tag will be used as global origin.
ORIGIN_TAG_ID = 0 
# other tags are static relative to origin tag, and can be used to identify it.
STATIC_TAG_IDS = [0, 1, 2, 3]
# NOTE: look into actually publishing static transforms between the stationary tags.

# dictionary of tag poses relative to camera, keyed by tag ID.
static_tags = {}
dynamic_tags = {}

########### TF INFO ############
tf_listener = None
tf_buffer = None
TF_ORIGIN = 'map'
TF_CAMERA = 'camera_link'
##########################################


def get_tag_detection(tag_msg):
    """
    Detect AprilTag pose(s) relative to the camera frame.
    @param tag_msg: an AprilTagDetectionArray message containing a list of detected tags.
     - This list is empty but still published when no tags are detected.
    """
    # verify there is at least one tag detected.
    if len(tag_msg.detections) == 0:
        return
    
    # do for all detected tags.
    for i in range(len(tag_msg.detections)):
        tag_id = tag_msg.detections[i].id
        tag_pose = tag_msg.detections[i].pose.pose.pose
        # extract translation (t) and orientation quaternion (q).
        t = [tag_pose.position.x,tag_pose.position.y,tag_pose.position.z]
        q = [tag_pose.orientation.w, tag_pose.orientation.x, tag_pose.orientation.y, tag_pose.orientation.z]
        # make it into an affine matrix.
        r = R.from_quat(q).as_matrix()
        # make affine matrix for transformation. (tag relative to camera frame)
        T_AC = np.array([[r[0][0],r[0][1],r[0][2],t[0]],
                        [r[1][0],r[1][1],r[1][2],t[1]],
                        [r[2][0],r[2][1],r[2][2],t[2]],
                        [0,0,0,1]])
        
        # if this is a static tag that has already been detected, ignore it.
        if tag_id in static_tags.keys(): continue
        # if this is a static tag being detected for the first time, update all static tag poses.
        elif tag_id in STATIC_TAG_IDS:
            static_tags[tag_id] = T_AC
            for id in STATIC_TAG_IDS:
                if id == tag_id: continue
                # get transform between detected tag and another static tag.
                tf_tag_to_detected = get_transform(TF_TO="tag"+str(id), TF_FROM="tag"+str(tag_id))
                # calculate transform between the non-detected static tag and the camera.
                tf_tag_to_cam = T_AC @ tf_tag_to_detected
                static_tags[id] = tf_tag_to_cam
        else:
            # add/update one of the dynamic tags. TODO
            pass


def get_transform(TF_TO:str, TF_FROM:str):
    """
    Get the expected transform from tf.
    Use translation and quaternion from tf to construct a pose in SE(3).
    """
    try:
        # get most recent relative pose from the tf service.
        pose = tf_buffer.lookup_transform(TF_TO, TF_FROM, rospy.Time(0), rospy.Duration(4))
    except Exception as e:
        # requested transform was not found.
        print("Transform from " + TF_FROM + " to " + TF_TO + " not found.")
        print("Exception: ", e)
        return None
    
    # extract translation and quaternion from tf pose.
    t = [pose.transform.translation.x, pose.transform.translation.y, pose.transform.translation.z]
    q = (pose.transform.rotation.x, pose.transform.rotation.y, pose.transform.rotation.z, pose.transform.rotation.w)
    # get equiv rotation matrix from quaternion.
    r = R.from_quat(q).as_matrix()

    # make affine matrix for transformation.
    return np.array([[r[0][0],r[0][1],r[0][2],t[0]],
                    [r[1][0],r[1][1],r[1][2],t[1]],
                    [r[2][0],r[2][1],r[2][2],t[2]],
                    [0,0,0,1]])


def timer_callback(event):
    """
    Publish our current knowledge of the pose of the end-effector.
    """
    # TODO
    pass
    

def main():
    global tf_listener, tf_buffer
    rospy.init_node('tag_tracking_node')

    # setup TF service.
    tf_buffer = tf2_ros.Buffer(cache_time=rospy.Duration(1))
    tf_listener = tf2_ros.TransformListener(tf_buffer)

    # subscribe to apriltag detections.
    rospy.Subscriber("/tag_detections", AprilTagDetectionArray, get_tag_detection, queue_size=1)

    # TODO create publisher for end effector pose relative to origin.

    rospy.Timer(rospy.Duration(DT), timer_callback)
    rospy.spin()


if __name__ == '__main__':
    try:
        main()
    except rospy.ROSInterruptException:
        pass