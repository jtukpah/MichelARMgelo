execute_process(COMMAND "/home/river/interbotix_ws/build/interbotix_common_modules/catkin_generated/python_distutils_install.sh" RESULT_VARIABLE res)

if(NOT res EQUAL 0)
  message(FATAL_ERROR "execute_process(/home/river/interbotix_ws/build/interbotix_common_modules/catkin_generated/python_distutils_install.sh) returned error code ")
endif()
