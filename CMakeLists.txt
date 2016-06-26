### 1 - Required CMake Version
cmake_minimum_required(VERSION 2.8.3)
### 2- Package Name
project(people_msgs)
### 3 - Find other CMake/Catkin packages needed for build
SET(ROSDEPS message_generation sensor_msgs std_msgs)

find_package(catkin REQUIRED COMPONENTS ${ROSDEPS})
### 4 - Message/Service/Action Generators (add_message_files(), add_service_files(), add_action_files())
add_message_files(
  FILES
  PeoplePose.msg
  PeoplePoseAttributes.msg
  PeoplePoseList.msg
)
add_service_files(
  FILES
  MatchPPL.srv
)
### 5 - Invoke message/service/action generation (generate_messages())
generate_messages(
  DEPENDENCIES
  std_msgs sensor_msgs geometry_msgs # Or other packages containing msgs
)
### 6 - Specify package build info export (catkin_package())
catkin_package(CATKIN_DEPENDS ${ROSDEPS})
### 7 - Libraries/Executables to build (add_library()/add_executable()/target_link_libraries())
# Nothing in this package
### 8 - Tests to build (catkin_add_gtest())
# Nothing in this package
### 9 - Install rules (install())
# Nothing in this package
