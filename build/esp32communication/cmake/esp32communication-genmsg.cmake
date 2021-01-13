# generated from genmsg/cmake/pkg-genmsg.cmake.em

message(STATUS "esp32communication: 1 messages, 1 services")

set(MSG_I_FLAGS "-Iesp32communication:/home/dev/catkin_ws/src/esp32communication/msg;-Istd_msgs:/opt/ros/melodic/share/std_msgs/cmake/../msg")

# Find all generators
find_package(gencpp REQUIRED)
find_package(geneus REQUIRED)
find_package(genlisp REQUIRED)
find_package(gennodejs REQUIRED)
find_package(genpy REQUIRED)

add_custom_target(esp32communication_generate_messages ALL)

# verify that message/service dependencies have not changed since configure



get_filename_component(_filename "/home/dev/catkin_ws/src/esp32communication/msg/imu.msg" NAME_WE)
add_custom_target(_esp32communication_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "esp32communication" "/home/dev/catkin_ws/src/esp32communication/msg/imu.msg" ""
)

get_filename_component(_filename "/home/dev/catkin_ws/src/esp32communication/srv/can.srv" NAME_WE)
add_custom_target(_esp32communication_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "esp32communication" "/home/dev/catkin_ws/src/esp32communication/srv/can.srv" ""
)

#
#  langs = gencpp;geneus;genlisp;gennodejs;genpy
#

### Section generating for lang: gencpp
### Generating Messages
_generate_msg_cpp(esp32communication
  "/home/dev/catkin_ws/src/esp32communication/msg/imu.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/esp32communication
)

### Generating Services
_generate_srv_cpp(esp32communication
  "/home/dev/catkin_ws/src/esp32communication/srv/can.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/esp32communication
)

### Generating Module File
_generate_module_cpp(esp32communication
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/esp32communication
  "${ALL_GEN_OUTPUT_FILES_cpp}"
)

add_custom_target(esp32communication_generate_messages_cpp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_cpp}
)
add_dependencies(esp32communication_generate_messages esp32communication_generate_messages_cpp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/dev/catkin_ws/src/esp32communication/msg/imu.msg" NAME_WE)
add_dependencies(esp32communication_generate_messages_cpp _esp32communication_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/dev/catkin_ws/src/esp32communication/srv/can.srv" NAME_WE)
add_dependencies(esp32communication_generate_messages_cpp _esp32communication_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(esp32communication_gencpp)
add_dependencies(esp32communication_gencpp esp32communication_generate_messages_cpp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS esp32communication_generate_messages_cpp)

### Section generating for lang: geneus
### Generating Messages
_generate_msg_eus(esp32communication
  "/home/dev/catkin_ws/src/esp32communication/msg/imu.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/esp32communication
)

### Generating Services
_generate_srv_eus(esp32communication
  "/home/dev/catkin_ws/src/esp32communication/srv/can.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/esp32communication
)

### Generating Module File
_generate_module_eus(esp32communication
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/esp32communication
  "${ALL_GEN_OUTPUT_FILES_eus}"
)

add_custom_target(esp32communication_generate_messages_eus
  DEPENDS ${ALL_GEN_OUTPUT_FILES_eus}
)
add_dependencies(esp32communication_generate_messages esp32communication_generate_messages_eus)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/dev/catkin_ws/src/esp32communication/msg/imu.msg" NAME_WE)
add_dependencies(esp32communication_generate_messages_eus _esp32communication_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/dev/catkin_ws/src/esp32communication/srv/can.srv" NAME_WE)
add_dependencies(esp32communication_generate_messages_eus _esp32communication_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(esp32communication_geneus)
add_dependencies(esp32communication_geneus esp32communication_generate_messages_eus)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS esp32communication_generate_messages_eus)

### Section generating for lang: genlisp
### Generating Messages
_generate_msg_lisp(esp32communication
  "/home/dev/catkin_ws/src/esp32communication/msg/imu.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/esp32communication
)

### Generating Services
_generate_srv_lisp(esp32communication
  "/home/dev/catkin_ws/src/esp32communication/srv/can.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/esp32communication
)

### Generating Module File
_generate_module_lisp(esp32communication
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/esp32communication
  "${ALL_GEN_OUTPUT_FILES_lisp}"
)

add_custom_target(esp32communication_generate_messages_lisp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_lisp}
)
add_dependencies(esp32communication_generate_messages esp32communication_generate_messages_lisp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/dev/catkin_ws/src/esp32communication/msg/imu.msg" NAME_WE)
add_dependencies(esp32communication_generate_messages_lisp _esp32communication_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/dev/catkin_ws/src/esp32communication/srv/can.srv" NAME_WE)
add_dependencies(esp32communication_generate_messages_lisp _esp32communication_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(esp32communication_genlisp)
add_dependencies(esp32communication_genlisp esp32communication_generate_messages_lisp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS esp32communication_generate_messages_lisp)

### Section generating for lang: gennodejs
### Generating Messages
_generate_msg_nodejs(esp32communication
  "/home/dev/catkin_ws/src/esp32communication/msg/imu.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/esp32communication
)

### Generating Services
_generate_srv_nodejs(esp32communication
  "/home/dev/catkin_ws/src/esp32communication/srv/can.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/esp32communication
)

### Generating Module File
_generate_module_nodejs(esp32communication
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/esp32communication
  "${ALL_GEN_OUTPUT_FILES_nodejs}"
)

add_custom_target(esp32communication_generate_messages_nodejs
  DEPENDS ${ALL_GEN_OUTPUT_FILES_nodejs}
)
add_dependencies(esp32communication_generate_messages esp32communication_generate_messages_nodejs)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/dev/catkin_ws/src/esp32communication/msg/imu.msg" NAME_WE)
add_dependencies(esp32communication_generate_messages_nodejs _esp32communication_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/dev/catkin_ws/src/esp32communication/srv/can.srv" NAME_WE)
add_dependencies(esp32communication_generate_messages_nodejs _esp32communication_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(esp32communication_gennodejs)
add_dependencies(esp32communication_gennodejs esp32communication_generate_messages_nodejs)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS esp32communication_generate_messages_nodejs)

### Section generating for lang: genpy
### Generating Messages
_generate_msg_py(esp32communication
  "/home/dev/catkin_ws/src/esp32communication/msg/imu.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/esp32communication
)

### Generating Services
_generate_srv_py(esp32communication
  "/home/dev/catkin_ws/src/esp32communication/srv/can.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/esp32communication
)

### Generating Module File
_generate_module_py(esp32communication
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/esp32communication
  "${ALL_GEN_OUTPUT_FILES_py}"
)

add_custom_target(esp32communication_generate_messages_py
  DEPENDS ${ALL_GEN_OUTPUT_FILES_py}
)
add_dependencies(esp32communication_generate_messages esp32communication_generate_messages_py)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/dev/catkin_ws/src/esp32communication/msg/imu.msg" NAME_WE)
add_dependencies(esp32communication_generate_messages_py _esp32communication_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/dev/catkin_ws/src/esp32communication/srv/can.srv" NAME_WE)
add_dependencies(esp32communication_generate_messages_py _esp32communication_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(esp32communication_genpy)
add_dependencies(esp32communication_genpy esp32communication_generate_messages_py)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS esp32communication_generate_messages_py)



if(gencpp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/esp32communication)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/esp32communication
    DESTINATION ${gencpp_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_cpp)
  add_dependencies(esp32communication_generate_messages_cpp std_msgs_generate_messages_cpp)
endif()

if(geneus_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/esp32communication)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/esp32communication
    DESTINATION ${geneus_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_eus)
  add_dependencies(esp32communication_generate_messages_eus std_msgs_generate_messages_eus)
endif()

if(genlisp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/esp32communication)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/esp32communication
    DESTINATION ${genlisp_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_lisp)
  add_dependencies(esp32communication_generate_messages_lisp std_msgs_generate_messages_lisp)
endif()

if(gennodejs_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/esp32communication)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/esp32communication
    DESTINATION ${gennodejs_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_nodejs)
  add_dependencies(esp32communication_generate_messages_nodejs std_msgs_generate_messages_nodejs)
endif()

if(genpy_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/esp32communication)
  install(CODE "execute_process(COMMAND \"/usr/bin/python2\" -m compileall \"${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/esp32communication\")")
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/esp32communication
    DESTINATION ${genpy_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_py)
  add_dependencies(esp32communication_generate_messages_py std_msgs_generate_messages_py)
endif()
