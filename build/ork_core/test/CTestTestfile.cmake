# CMake generated Testfile for 
# Source directory: /home/willy/ws/src/ork_core/test
# Build directory: /home/willy/ws/build/ork_core/test
# 
# This file includes the relevant testing commands required for 
# testing this directory and lists subdirectories to be tested as well.
add_test(object_recognition_core_test_import.py "/home/willy/ws/devel/share/object_recognition_core/cmake/../test/run_test.sh" "/home/willy/ws/devel/setup.sh" "/home/willy/ws/src/ork_core/test/test_import.py")
add_test(object_recognition_core_test_config.py "/home/willy/ws/devel/share/object_recognition_core/cmake/../test/run_test.sh" "/home/willy/ws/devel/setup.sh" "/home/willy/ws/src/ork_core/test/test_config.py")
add_test(object_recognition_core_help_/home/willy/ws/src/ork_core/test/../apps/detection "/home/willy/ws/devel/share/object_recognition_core/cmake/../test/run_test.sh" "/home/willy/ws/devel/setup.sh" "/home/willy/ws/devel/share/object_recognition_core/cmake/../test/test_help.py /home/willy/ws/src/ork_core/test/../apps/detection")
add_test(object_recognition_core_help_/home/willy/ws/src/ork_core/test/../apps/training "/home/willy/ws/devel/share/object_recognition_core/cmake/../test/run_test.sh" "/home/willy/ws/devel/setup.sh" "/home/willy/ws/devel/share/object_recognition_core/cmake/../test/test_help.py /home/willy/ws/src/ork_core/test/../apps/training")
add_test(object_recognition_core_source_OpenNI "/home/willy/ws/devel/share/object_recognition_core/cmake/../test/run_test.sh" "/home/willy/ws/devel/setup.sh" "/home/willy/ws/devel/share/object_recognition_core/cmake/../test/test_source.py OpenNI object_recognition_core.io {}")
add_test(object_recognition_core_sink_GuessCsvWriter "/home/willy/ws/devel/share/object_recognition_core/cmake/../test/run_test.sh" "/home/willy/ws/devel/setup.sh" "/home/willy/ws/devel/share/object_recognition_core/cmake/../test/test_sink.py GuessCsvWriter object_recognition_core.io {}")
add_test(object_recognition_core_/home/willy/ws/src/ork_core/test/detection.test.ork "/home/willy/ws/devel/share/object_recognition_core/cmake/../test/run_test.sh" "/home/willy/ws/devel/setup.sh" "/home/willy/ws/devel/share/object_recognition_core/cmake/../test/test_config.py -c /home/willy/ws/src/ork_core/test/detection.test.ork")
subdirs(db)
