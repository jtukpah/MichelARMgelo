# COPY THE CONTENTS OF THIS FILE TO THE BOTTOM OF ~/interbotix_ws/src/interbotix_ros_toolboxes/interbotix_xs_toolbox/interbotix_xs_modules/src/interbotix_xs_modules/arm.py.
# Ensure the indentation is correct for it to be included in the InterbotixArmXSInterface class.

    # Draw a smooth line connecting two points.
    # When used with points on a sphere, only monotonic changes are possible.
    # i.e., X cannot increase and then decrease in the same motion.
    def set_ee_arc_trajectory(self, dx=0.2, dz=0.3, dr=0, dp=0, PEN_OFFSET = 0.055, moving_time=None, wp_moving_time=0.2, wp_accel_time=0.1, wp_period=0.05):
        rpy = ang.rotationMatrixToEulerAngles(self.T_sb[:3,:3])
        T_sy = np.identity(4)
        T_sy[:3,:3] = ang.eulerAnglesToRotationMatrix([0.0, 0.0, rpy[2]])
        T_yb = np.dot(mr.TransInv(T_sy), self.T_sb)
        rpy[2] = 0.0
        if (moving_time == None):
            moving_time = self.moving_time
        accel_time = self.accel_time
        N = int(moving_time / wp_period)
        inc = 1.0 / float(N)
        joint_traj = JointTrajectory()
        joint_positions = list(self.joint_commands)
        # starting (current) position.
        x0 = T_yb[0][3]; z0 = T_yb[2][3]
        # print("Currently at ",x0 ,z0)
        for i in range(N+1):
            joint_traj_point = JointTrajectoryPoint()
            joint_traj_point.positions = joint_positions
            joint_traj_point.time_from_start = rospy.Duration.from_sec(i * wp_period)
            joint_traj.points.append(joint_traj_point)
            if (i == N):
                break
            # T_yb[:3,3] += [math.sin(i/N*math.pi/2) * x, inc * y, math.sin(i/N*math.pi/2) * z]
            T_yb[:3,3] = [(x0+dx) - dx * math.cos(i/N*math.pi/2), 0, z0 + dz*math.sin(i/N*math.pi/2) - PEN_OFFSET*(1 - math.cos(i/N * dr))]
            rpy[0] += inc * dr
            rpy[1] += inc * dp
            T_yb[:3,:3] = ang.eulerAnglesToRotationMatrix(rpy)
            T_sd = np.dot(T_sy, T_yb)
            # print("Planning to go to ", T_sd)
            theta_list, success = self.set_ee_pose_matrix(T_sd, joint_positions, False, blocking=False)
            if success:
                joint_positions = theta_list
            else:
                rospy.loginfo("%.1f%% of trajectory successfully planned. Trajectory will not be executed." % (i/float(N) * 100))
                break

        if success:
            self.set_trajectory_time(wp_moving_time, wp_accel_time)
            joint_traj.joint_names = self.group_info.joint_names
            current_positions = []
            with self.core.js_mutex:
                for name in joint_traj.joint_names:
                    current_positions.append(self.core.joint_states.position[self.core.js_index_map[name]])
            joint_traj.points[0].positions = current_positions
            joint_traj.header.stamp = rospy.Time.now()
            self.core.pub_traj.publish(JointTrajectoryCommand("group", self.group_name, joint_traj))
            rospy.sleep(moving_time + wp_moving_time)
            self.T_sb = T_sd
            self.joint_commands = joint_positions
            self.set_trajectory_time(moving_time, accel_time)

        return success


    # ---------------------------------------------
    # Draw a line connecting two points on the sphere with the shortest distance (the geodesic).
    # @param D - desired changes (dx, dy, dz, dr, dp) to each coordinate in meters or radians.
    # @param C - center point (cx, cy, cz) of sphere in meters in arm's coordinate frame.
    # @param R - radius of sphere in meters.
    def set_ee_geodesic_trajectory(self, D=(0.2, 0.0, 0.1, 0.0, 0.0), C=(0.2, 0.0, 0.0), R=0.11, PEN_OFFSET = 0.055, moving_time=None, wp_moving_time=0.2, wp_accel_time=0.1, wp_period=0.05):
        # Setup stuff from set_ee_cartesian_trajectory.
        rpy = ang.rotationMatrixToEulerAngles(self.T_sb[:3,:3])
        T_sy = np.identity(4)
        T_sy[:3,:3] = ang.eulerAnglesToRotationMatrix([0.0, 0.0, rpy[2]])
        T_yb = np.dot(mr.TransInv(T_sy), self.T_sb)
        rpy[2] = 0.0
        if (moving_time == None):
            moving_time = self.moving_time
        accel_time = self.accel_time
        # number of points to interpolate.
        # N = int(moving_time / wp_period)
        N = 20
        inc = 1.0 / float(N)
        joint_traj = JointTrajectory()
        joint_positions = list(self.joint_commands)
        """
        A geodesic is the shortest path between two points on the surface of a sphere.
        It can be defined by the intersection of the sphere's surface with the 
        plane defined by start pt, end pt, and center of sphere.
        Strategy: 
            - Interpolate straight line between the two points in cartesian.
            - For each point, find the vector to it from the center of the sphere.
            - Project this vector exactly a distance R (the radius) from the center point.
        """
        # current position.
        x0 = T_yb[0][3]; y0 = T_yb[1][3]; z0 = T_yb[2][3]
        # straight-line interpolation of position.
        sl_pos = [x0, y0, z0]
        for i in range(N+1):
            print("----------------------------------------")
            joint_traj_point = JointTrajectoryPoint()
            joint_traj_point.positions = joint_positions
            joint_traj_point.time_from_start = rospy.Duration.from_sec(i * wp_period)
            joint_traj.points.append(joint_traj_point)
            if (i == N):
                break
            # Interpolate arc between points.
            #  - interpolate straight line.
            sl_pos = [sl_pos[i]+inc*D[i] for i in range(3)]
            print("Straight line interpolated point is "+str(sl_pos))
            #  - find unit vector from center to this point.
            vec = [sl_pos[i]-C[i] for i in range(3)]; 
            # print("Vec is "+str(vec))
            vec = vec / sum([vec[i]**2 for i in range(3)])**(1/2)
            print("Unit vec is "+str(vec))
            #  - project distance to R and set this position.
            T_yb[:3,3] = C + vec*R
            print("Next position is "+str(T_yb[:3,3]))
            #  - offset Z using roll to keep contact with sphere.
            T_yb[2,3] -= PEN_OFFSET*(1 - math.cos(i/N * D[3]))
            print("Next position is "+str(T_yb[:3,3])+" after pen angle offset.")
            # Linearly interpolate orientation.
            rpy[0] += inc * D[3] #dr
            rpy[1] += inc * D[4] #dp
            T_yb[:3,:3] = ang.eulerAnglesToRotationMatrix(rpy)
            T_sd = np.dot(T_sy, T_yb)
            # rospy.loginfo("Planning to go to "+str(T_sd))
            theta_list, success = self.set_ee_pose_matrix(T_sd, joint_positions, False, blocking=False)
            if success:
                joint_positions = theta_list
            else:
                rospy.loginfo("%.1f%% of trajectory successfully planned. Trajectory will not be executed." % (i/float(N) * 100))
                break

        if success:
            self.set_trajectory_time(wp_moving_time, wp_accel_time)
            joint_traj.joint_names = self.group_info.joint_names
            current_positions = []
            with self.core.js_mutex:
                for name in joint_traj.joint_names:
                    current_positions.append(self.core.joint_states.position[self.core.js_index_map[name]])
            joint_traj.points[0].positions = current_positions
            joint_traj.header.stamp = rospy.Time.now()
            self.core.pub_traj.publish(JointTrajectoryCommand("group", self.group_name, joint_traj))
            rospy.sleep(moving_time + wp_moving_time)
            self.T_sb = T_sd
            self.joint_commands = joint_positions
            self.set_trajectory_time(moving_time, accel_time)

        return success

  