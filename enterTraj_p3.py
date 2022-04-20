import rospy
import numpy
from std_msgs.msg import Float32MultiArray

def traj():
    pub = rospy.Publisher('traj', Float32MultiArray, queue_size=10)  #Create the publisher
    rospy.init_node('traj_talked', anonymous=True)          #Init the node that the publisher will be on
    rate = rospy.Rate(10) # 10hz                            #Create the rate at which the node is going to publish

    
    traj = Float32MultiArray()                              #Store the two traj value as an array
    print("How many points are in this trajectory?")
    traj_length = int(float(input()))                   #When reading in avalue from raw input, first convert to float and then convert to int. This accounts for the conversion from string to possible float, and then drops the extra value to turn it into an int

    for _ in range(traj_length):
        print("Please enter your trajectory values with spaces inbetween")
        trajectory = [float(n) for n in input().split(" ")]
        print(trajectory)
        traj.data += trajectory
    
    # print "Please enter your first  x coordinate"                  #Ask the user for an input x
    # x1 = float(raw_input())                                  #Store that input #TODO allowed to move in -x and +x
    # print "Please enter your first y coordinate"                  #Ask the user for an input x
    # y1 = float(raw_input())                                  #Store that input #TODO allowed to move in -y and +y
    # print "Please enter your first z coordinate"                  #Ask the user for an input for the z
    # z1 = float(raw_input())                                  #Store that input #TODO provide artifical lower z bound which wil be pen + table height(i.e drawing surface relative to where it is mounted) #TODO if zbound i received throw and error
    # print "Please enter your second x coordinate"                  #Ask the user for an input x
    # x2 = float(raw_input())                                  #Store that input #TODO allowed to move in -x and +x
    # print "Please enter your second y coordinate"                  #Ask the user for an input x
    # y2 = float(raw_input())                                  #Store that input #TODO allowed to move in -y and +y
    # print "Please enter your second z coordinate"                  #Ask the user for an input for the z
    # z2 = float(raw_input())                                  #Store that input #TODO provide artifical lower z bound which wil be pen + table height(i.e drawing surface relative to where it is mounted) #TODO if zbound i received throw and error
    rospy.loginfo(traj.data)
    pub.publish(traj)
    rate.sleep()

if __name__ == '__main__':
    try:
        traj()
    except rospy.ROSInterruptException:
        pass
