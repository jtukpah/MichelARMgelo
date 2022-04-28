# COPY THIS FUNCTION TO THE BOTTOM OF interbotix_ws/src/interbotix_ros_toolboxes/interbotix_xs_toolbox/interbotix_xs_modules/src/interbotix_xs_modules/arm.py.
# ensure the indentation is correct for it to be included in the class.

    def set_ee_arc_trajectory(self, x=0.2, z=0.3, roll=0, pitch=0, yaw=0, moving_time=None, wp_moving_time=0.2, wp_accel_time=0.1, wp_period=0.05):
        pen_offset = 0.055
        print("Usage: x = change in x, z = change in z, pitch = change in pitch")
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
        x0 = T_yb[0][3]
        z0 = T_yb[2][3]
        print("Currently at ",x0 ,z0)
        for i in range(N+1):
            joint_traj_point = JointTrajectoryPoint()
            joint_traj_point.positions = joint_positions
            joint_traj_point.time_from_start = rospy.Duration.from_sec(i * wp_period)
            joint_traj.points.append(joint_traj_point)
            if (i == N):
                break
            # T_yb[:3,3] += [math.sin(i/N*math.pi/2) * x, inc * y, math.sin(i/N*math.pi/2) * z]
            T_yb[:3,3] = [(x0+x) - x * math.cos(i/N*math.pi/2), 0, z0 + z*math.sin(i/N*math.pi/2) - pen_offset*(1 - math.cos(i/N * roll))]
            rpy[0] += inc * roll
            rpy[1] += inc * pitch
            T_yb[:3,:3] = ang.eulerAnglesToRotationMatrix(rpy)
            T_sd = np.dot(T_sy, T_yb)
            print("Planning to go to ", T_sd)
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