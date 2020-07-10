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
    DESTDIR_ARG="--root=$DESTDIR"
fi

echo_and_run() { echo "+ $@" ; "$@" ; }

echo_and_run cd "/home/willy/ws/src/ork_linemod"

# ensure that Python install destination exists
echo_and_run mkdir -p "$DESTDIR/home/willy/ws/install/lib/python2.7/dist-packages"

# Note that PYTHONPATH is pulled from the environment to support installing
# into one location when some dependencies were installed in another
# location, #123.
echo_and_run /usr/bin/env \
    PYTHONPATH="/home/willy/ws/install/lib/python2.7/dist-packages:/home/willy/ws/build/lib/python2.7/dist-packages:$PYTHONPATH" \
    CATKIN_BINARY_DIR="/home/willy/ws/build" \
    "/usr/bin/python2" \
    "/home/willy/ws/src/ork_linemod/setup.py" \
    build --build-base "/home/willy/ws/build/ork_linemod" \
    install \
    $DESTDIR_ARG \
    --install-layout=deb --prefix="/home/willy/ws/install" --install-scripts="/home/willy/ws/install/bin"
