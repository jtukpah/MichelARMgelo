#!/bin/sh

if [ -n "$DESTDIR" ] ; then
    case $DESTDIR in
        /*) # ok
            ;;
        *)
            /bin/echo "DESTDIR argument must be absolute... "
            /bin/echo "otherwise python's distutils will bork things."
            exit 1
    esac
fi

echo_and_run() { echo "+ $@" ; "$@" ; }

echo_and_run cd "/home/river/interbotix_ws/src/interbotix_ros_toolboxes/interbotix_common_toolbox/interbotix_landmark_modules"

# ensure that Python install destination exists
echo_and_run mkdir -p "$DESTDIR/home/river/interbotix_ws/install/lib/python2.7/dist-packages"

# Note that PYTHONPATH is pulled from the environment to support installing
# into one location when some dependencies were installed in another
# location, #123.
echo_and_run /usr/bin/env \
    PYTHONPATH="/home/river/interbotix_ws/install/lib/python2.7/dist-packages:/home/river/interbotix_ws/build/interbotix_landmark_modules/lib/python2.7/dist-packages:$PYTHONPATH" \
    CATKIN_BINARY_DIR="/home/river/interbotix_ws/build/interbotix_landmark_modules" \
    "/usr/bin/python2" \
    "/home/river/interbotix_ws/src/interbotix_ros_toolboxes/interbotix_common_toolbox/interbotix_landmark_modules/setup.py" \
     \
    build --build-base "/home/river/interbotix_ws/build/interbotix_landmark_modules" \
    install \
    --root="${DESTDIR-/}" \
    --install-layout=deb --prefix="/home/river/interbotix_ws/install" --install-scripts="/home/river/interbotix_ws/install/bin"
