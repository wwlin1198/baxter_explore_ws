# Install script for directory: /home/willy/ws/src

# Set the install prefix
if(NOT DEFINED CMAKE_INSTALL_PREFIX)
  set(CMAKE_INSTALL_PREFIX "/home/willy/ws/install")
endif()
string(REGEX REPLACE "/$" "" CMAKE_INSTALL_PREFIX "${CMAKE_INSTALL_PREFIX}")

# Set the install configuration name.
if(NOT DEFINED CMAKE_INSTALL_CONFIG_NAME)
  if(BUILD_TYPE)
    string(REGEX REPLACE "^[^A-Za-z0-9_]+" ""
           CMAKE_INSTALL_CONFIG_NAME "${BUILD_TYPE}")
  else()
    set(CMAKE_INSTALL_CONFIG_NAME "")
  endif()
  message(STATUS "Install configuration: \"${CMAKE_INSTALL_CONFIG_NAME}\"")
endif()

# Set the component getting installed.
if(NOT CMAKE_INSTALL_COMPONENT)
  if(COMPONENT)
    message(STATUS "Install component: \"${COMPONENT}\"")
    set(CMAKE_INSTALL_COMPONENT "${COMPONENT}")
  else()
    set(CMAKE_INSTALL_COMPONENT)
  endif()
endif()

# Install shared libraries without execute permission?
if(NOT DEFINED CMAKE_INSTALL_SO_NO_EXE)
  set(CMAKE_INSTALL_SO_NO_EXE "1")
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  
      if (NOT EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}")
        file(MAKE_DIRECTORY "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}")
      endif()
      if (NOT EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/.catkin")
        file(WRITE "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/.catkin" "")
      endif()
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  list(APPEND CMAKE_ABSOLUTE_DESTINATION_FILES
   "/home/willy/ws/install/_setup_util.py")
  if(CMAKE_WARN_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(WARNING "ABSOLUTE path INSTALL DESTINATION : ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
  if(CMAKE_ERROR_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(FATAL_ERROR "ABSOLUTE path INSTALL DESTINATION forbidden (by caller): ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
file(INSTALL DESTINATION "/home/willy/ws/install" TYPE PROGRAM FILES "/home/willy/ws/build/catkin_generated/installspace/_setup_util.py")
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  list(APPEND CMAKE_ABSOLUTE_DESTINATION_FILES
   "/home/willy/ws/install/env.sh")
  if(CMAKE_WARN_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(WARNING "ABSOLUTE path INSTALL DESTINATION : ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
  if(CMAKE_ERROR_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(FATAL_ERROR "ABSOLUTE path INSTALL DESTINATION forbidden (by caller): ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
file(INSTALL DESTINATION "/home/willy/ws/install" TYPE PROGRAM FILES "/home/willy/ws/build/catkin_generated/installspace/env.sh")
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  list(APPEND CMAKE_ABSOLUTE_DESTINATION_FILES
   "/home/willy/ws/install/setup.bash;/home/willy/ws/install/local_setup.bash")
  if(CMAKE_WARN_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(WARNING "ABSOLUTE path INSTALL DESTINATION : ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
  if(CMAKE_ERROR_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(FATAL_ERROR "ABSOLUTE path INSTALL DESTINATION forbidden (by caller): ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
file(INSTALL DESTINATION "/home/willy/ws/install" TYPE FILE FILES
    "/home/willy/ws/build/catkin_generated/installspace/setup.bash"
    "/home/willy/ws/build/catkin_generated/installspace/local_setup.bash"
    )
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  list(APPEND CMAKE_ABSOLUTE_DESTINATION_FILES
   "/home/willy/ws/install/setup.sh;/home/willy/ws/install/local_setup.sh")
  if(CMAKE_WARN_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(WARNING "ABSOLUTE path INSTALL DESTINATION : ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
  if(CMAKE_ERROR_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(FATAL_ERROR "ABSOLUTE path INSTALL DESTINATION forbidden (by caller): ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
file(INSTALL DESTINATION "/home/willy/ws/install" TYPE FILE FILES
    "/home/willy/ws/build/catkin_generated/installspace/setup.sh"
    "/home/willy/ws/build/catkin_generated/installspace/local_setup.sh"
    )
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  list(APPEND CMAKE_ABSOLUTE_DESTINATION_FILES
   "/home/willy/ws/install/setup.zsh;/home/willy/ws/install/local_setup.zsh")
  if(CMAKE_WARN_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(WARNING "ABSOLUTE path INSTALL DESTINATION : ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
  if(CMAKE_ERROR_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(FATAL_ERROR "ABSOLUTE path INSTALL DESTINATION forbidden (by caller): ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
file(INSTALL DESTINATION "/home/willy/ws/install" TYPE FILE FILES
    "/home/willy/ws/build/catkin_generated/installspace/setup.zsh"
    "/home/willy/ws/build/catkin_generated/installspace/local_setup.zsh"
    )
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  list(APPEND CMAKE_ABSOLUTE_DESTINATION_FILES
   "/home/willy/ws/install/.rosinstall")
  if(CMAKE_WARN_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(WARNING "ABSOLUTE path INSTALL DESTINATION : ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
  if(CMAKE_ERROR_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(FATAL_ERROR "ABSOLUTE path INSTALL DESTINATION forbidden (by caller): ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
file(INSTALL DESTINATION "/home/willy/ws/install" TYPE FILE FILES "/home/willy/ws/build/catkin_generated/installspace/.rosinstall")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for each subdirectory.
  include("/home/willy/ws/build/gtest/cmake_install.cmake")
  include("/home/willy/ws/build/moveit_robots/atlas_moveit_config/cmake_install.cmake")
  include("/home/willy/ws/build/baxter_common/baxter_common/cmake_install.cmake")
  include("/home/willy/ws/build/baxter_common/baxter_description/cmake_install.cmake")
  include("/home/willy/ws/build/baxter/baxter_sdk/cmake_install.cmake")
  include("/home/willy/ws/build/baxter_simulator/baxter_simulator/cmake_install.cmake")
  include("/home/willy/ws/build/ecto/cmake_install.cmake")
  include("/home/willy/ws/build/geometry2/geometry2/cmake_install.cmake")
  include("/home/willy/ws/build/moveit_robots/iri_wam_moveit_config/cmake_install.cmake")
  include("/home/willy/ws/build/moveit_robots/moveit_robots/cmake_install.cmake")
  include("/home/willy/ws/build/moveit_robots/r2_moveit_generated/cmake_install.cmake")
  include("/home/willy/ws/build/baxter_common/rethink_ee_description/cmake_install.cmake")
  include("/home/willy/ws/build/moveit_robots/baxter/baxter_moveit_config/cmake_install.cmake")
  include("/home/willy/ws/build/baxter_common/baxter_maintenance_msgs/cmake_install.cmake")
  include("/home/willy/ws/build/geometry2/tf2_msgs/cmake_install.cmake")
  include("/home/willy/ws/build/geometry2/tf2/cmake_install.cmake")
  include("/home/willy/ws/build/geometry2/tf2_bullet/cmake_install.cmake")
  include("/home/willy/ws/build/geometry2/tf2_eigen/cmake_install.cmake")
  include("/home/willy/ws/build/geometry2/tf2_py/cmake_install.cmake")
  include("/home/willy/ws/build/baxter_common/baxter_core_msgs/cmake_install.cmake")
  include("/home/willy/ws/build/baxter_interface/cmake_install.cmake")
  include("/home/willy/ws/build/baxter_simulator/baxter_sim_io/cmake_install.cmake")
  include("/home/willy/ws/build/baxter_tools/cmake_install.cmake")
  include("/home/willy/ws/build/ecto_openni/cmake_install.cmake")
  include("/home/willy/ws/build/ecto_ros/cmake_install.cmake")
  include("/home/willy/ws/build/ork_renderer/cmake_install.cmake")
  include("/home/willy/ws/build/opencv_candidate/cmake_install.cmake")
  include("/home/willy/ws/build/ecto_image_pipeline/cmake_install.cmake")
  include("/home/willy/ws/build/ecto_opencv/cmake_install.cmake")
  include("/home/willy/ws/build/ork_core/cmake_install.cmake")
  include("/home/willy/ws/build/ork_capture/cmake_install.cmake")
  include("/home/willy/ws/build/ork_linemod/cmake_install.cmake")
  include("/home/willy/ws/build/ork_ros/cmake_install.cmake")
  include("/home/willy/ws/build/ork_tod/cmake_install.cmake")
  include("/home/willy/ws/build/ecto_pcl/cmake_install.cmake")
  include("/home/willy/ws/build/ork_reconstruction/cmake_install.cmake")
  include("/home/willy/ws/build/geometry2/tf2_ros/cmake_install.cmake")
  include("/home/willy/ws/build/openni_tracker/cmake_install.cmake")
  include("/home/willy/ws/build/ork_transparent_objects/cmake_install.cmake")
  include("/home/willy/ws/build/geometry2/tf2_geometry_msgs/cmake_install.cmake")
  include("/home/willy/ws/build/geometry2/tf2_kdl/cmake_install.cmake")
  include("/home/willy/ws/build/geometry2/test_tf2/cmake_install.cmake")
  include("/home/willy/ws/build/geometry2/tf2_sensor_msgs/cmake_install.cmake")
  include("/home/willy/ws/build/geometry2/tf2_tools/cmake_install.cmake")
  include("/home/willy/ws/build/baxter_simulator/baxter_sim_controllers/cmake_install.cmake")
  include("/home/willy/ws/build/baxter_simulator/baxter_gazebo/cmake_install.cmake")
  include("/home/willy/ws/build/baxter_simulator/baxter_sim_kinematics/cmake_install.cmake")
  include("/home/willy/ws/build/baxter_simulator/baxter_sim_hardware/cmake_install.cmake")
  include("/home/willy/ws/build/baxter_pnp_one_arm_cartesian_sim/cmake_install.cmake")
  include("/home/willy/ws/build/baxter_simulator/baxter_sim_examples/cmake_install.cmake")
  include("/home/willy/ws/build/ork_ros_visualization/cmake_install.cmake")
  include("/home/willy/ws/build/moveit_robots/baxter/baxter_ikfast_left_arm_plugin/cmake_install.cmake")
  include("/home/willy/ws/build/moveit_robots/baxter/baxter_ikfast_right_arm_plugin/cmake_install.cmake")
  include("/home/willy/ws/build/moveit_robots/atlas_v3_moveit_config/cmake_install.cmake")
  include("/home/willy/ws/build/ork_tabletop/cmake_install.cmake")
  include("/home/willy/ws/build/baxter_examples/cmake_install.cmake")

endif()

if(CMAKE_INSTALL_COMPONENT)
  set(CMAKE_INSTALL_MANIFEST "install_manifest_${CMAKE_INSTALL_COMPONENT}.txt")
else()
  set(CMAKE_INSTALL_MANIFEST "install_manifest.txt")
endif()

string(REPLACE ";" "\n" CMAKE_INSTALL_MANIFEST_CONTENT
       "${CMAKE_INSTALL_MANIFEST_FILES}")
file(WRITE "/home/willy/ws/build/${CMAKE_INSTALL_MANIFEST}"
     "${CMAKE_INSTALL_MANIFEST_CONTENT}")
