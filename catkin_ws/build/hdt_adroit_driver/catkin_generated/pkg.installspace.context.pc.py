# generated from catkin/cmake/template/pkg.context.pc.in
CATKIN_PACKAGE_PREFIX = ""
PROJECT_PKG_CONFIG_INCLUDE_DIRS = "${prefix}/include;/usr/include".split(';') if "${prefix}/include;/usr/include" != "" else []
PROJECT_CATKIN_DEPENDS = "message_runtime;socketcan_interface;roscpp;rospy;std_msgs;sensor_msgs;hdt_common".replace(';', ' ')
PKG_CONFIG_LIBRARIES_WITH_PREFIX = "-lhdt_adroit;/usr/lib/x86_64-linux-gnu/libtinyxml.so;/usr/lib/x86_64-linux-gnu/libboost_system.so;/usr/lib/x86_64-linux-gnu/libboost_thread.so;/usr/lib/x86_64-linux-gnu/libboost_chrono.so;/usr/lib/x86_64-linux-gnu/libboost_date_time.so;/usr/lib/x86_64-linux-gnu/libboost_atomic.so;/usr/lib/x86_64-linux-gnu/libpthread.so".split(';') if "-lhdt_adroit;/usr/lib/x86_64-linux-gnu/libtinyxml.so;/usr/lib/x86_64-linux-gnu/libboost_system.so;/usr/lib/x86_64-linux-gnu/libboost_thread.so;/usr/lib/x86_64-linux-gnu/libboost_chrono.so;/usr/lib/x86_64-linux-gnu/libboost_date_time.so;/usr/lib/x86_64-linux-gnu/libboost_atomic.so;/usr/lib/x86_64-linux-gnu/libpthread.so" != "" else []
PROJECT_NAME = "hdt_adroit_driver"
PROJECT_SPACE_DIR = "/home/arl/catkin_ws/install"
PROJECT_VERSION = "0.0.0"