# generated from genmsg/cmake/pkg-genmsg.cmake.em

message(STATUS "dockerpublisher: 1 messages, 1 services")

set(MSG_I_FLAGS "-Idockerpublisher:/home/dev/catkin_ws/src/dockerpublisher/msg;-Istd_msgs:/opt/ros/melodic/share/std_msgs/cmake/../msg")

# Find all generators
find_package(gencpp REQUIRED)
find_package(geneus REQUIRED)
find_package(genlisp REQUIRED)
find_package(gennodejs REQUIRED)
find_package(genpy REQUIRED)

add_custom_target(dockerpublisher_generate_messages ALL)

# verify that message/service dependencies have not changed since configure



get_filename_component(_filename "/home/dev/catkin_ws/src/dockerpublisher/msg/Num.msg" NAME_WE)
add_custom_target(_dockerpublisher_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "dockerpublisher" "/home/dev/catkin_ws/src/dockerpublisher/msg/Num.msg" ""
)

get_filename_component(_filename "/home/dev/catkin_ws/src/dockerpublisher/srv/AddTwoInts.srv" NAME_WE)
add_custom_target(_dockerpublisher_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "dockerpublisher" "/home/dev/catkin_ws/src/dockerpublisher/srv/AddTwoInts.srv" ""
)

#
#  langs = gencpp;geneus;genlisp;gennodejs;genpy
#

### Section generating for lang: gencpp
### Generating Messages
_generate_msg_cpp(dockerpublisher
  "/home/dev/catkin_ws/src/dockerpublisher/msg/Num.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/dockerpublisher
)

### Generating Services
_generate_srv_cpp(dockerpublisher
  "/home/dev/catkin_ws/src/dockerpublisher/srv/AddTwoInts.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/dockerpublisher
)

### Generating Module File
_generate_module_cpp(dockerpublisher
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/dockerpublisher
  "${ALL_GEN_OUTPUT_FILES_cpp}"
)

add_custom_target(dockerpublisher_generate_messages_cpp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_cpp}
)
add_dependencies(dockerpublisher_generate_messages dockerpublisher_generate_messages_cpp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/dev/catkin_ws/src/dockerpublisher/msg/Num.msg" NAME_WE)
add_dependencies(dockerpublisher_generate_messages_cpp _dockerpublisher_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/dev/catkin_ws/src/dockerpublisher/srv/AddTwoInts.srv" NAME_WE)
add_dependencies(dockerpublisher_generate_messages_cpp _dockerpublisher_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(dockerpublisher_gencpp)
add_dependencies(dockerpublisher_gencpp dockerpublisher_generate_messages_cpp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS dockerpublisher_generate_messages_cpp)

### Section generating for lang: geneus
### Generating Messages
_generate_msg_eus(dockerpublisher
  "/home/dev/catkin_ws/src/dockerpublisher/msg/Num.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/dockerpublisher
)

### Generating Services
_generate_srv_eus(dockerpublisher
  "/home/dev/catkin_ws/src/dockerpublisher/srv/AddTwoInts.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/dockerpublisher
)

### Generating Module File
_generate_module_eus(dockerpublisher
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/dockerpublisher
  "${ALL_GEN_OUTPUT_FILES_eus}"
)

add_custom_target(dockerpublisher_generate_messages_eus
  DEPENDS ${ALL_GEN_OUTPUT_FILES_eus}
)
add_dependencies(dockerpublisher_generate_messages dockerpublisher_generate_messages_eus)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/dev/catkin_ws/src/dockerpublisher/msg/Num.msg" NAME_WE)
add_dependencies(dockerpublisher_generate_messages_eus _dockerpublisher_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/dev/catkin_ws/src/dockerpublisher/srv/AddTwoInts.srv" NAME_WE)
add_dependencies(dockerpublisher_generate_messages_eus _dockerpublisher_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(dockerpublisher_geneus)
add_dependencies(dockerpublisher_geneus dockerpublisher_generate_messages_eus)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS dockerpublisher_generate_messages_eus)

### Section generating for lang: genlisp
### Generating Messages
_generate_msg_lisp(dockerpublisher
  "/home/dev/catkin_ws/src/dockerpublisher/msg/Num.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/dockerpublisher
)

### Generating Services
_generate_srv_lisp(dockerpublisher
  "/home/dev/catkin_ws/src/dockerpublisher/srv/AddTwoInts.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/dockerpublisher
)

### Generating Module File
_generate_module_lisp(dockerpublisher
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/dockerpublisher
  "${ALL_GEN_OUTPUT_FILES_lisp}"
)

add_custom_target(dockerpublisher_generate_messages_lisp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_lisp}
)
add_dependencies(dockerpublisher_generate_messages dockerpublisher_generate_messages_lisp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/dev/catkin_ws/src/dockerpublisher/msg/Num.msg" NAME_WE)
add_dependencies(dockerpublisher_generate_messages_lisp _dockerpublisher_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/dev/catkin_ws/src/dockerpublisher/srv/AddTwoInts.srv" NAME_WE)
add_dependencies(dockerpublisher_generate_messages_lisp _dockerpublisher_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(dockerpublisher_genlisp)
add_dependencies(dockerpublisher_genlisp dockerpublisher_generate_messages_lisp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS dockerpublisher_generate_messages_lisp)

### Section generating for lang: gennodejs
### Generating Messages
_generate_msg_nodejs(dockerpublisher
  "/home/dev/catkin_ws/src/dockerpublisher/msg/Num.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/dockerpublisher
)

### Generating Services
_generate_srv_nodejs(dockerpublisher
  "/home/dev/catkin_ws/src/dockerpublisher/srv/AddTwoInts.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/dockerpublisher
)

### Generating Module File
_generate_module_nodejs(dockerpublisher
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/dockerpublisher
  "${ALL_GEN_OUTPUT_FILES_nodejs}"
)

add_custom_target(dockerpublisher_generate_messages_nodejs
  DEPENDS ${ALL_GEN_OUTPUT_FILES_nodejs}
)
add_dependencies(dockerpublisher_generate_messages dockerpublisher_generate_messages_nodejs)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/dev/catkin_ws/src/dockerpublisher/msg/Num.msg" NAME_WE)
add_dependencies(dockerpublisher_generate_messages_nodejs _dockerpublisher_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/dev/catkin_ws/src/dockerpublisher/srv/AddTwoInts.srv" NAME_WE)
add_dependencies(dockerpublisher_generate_messages_nodejs _dockerpublisher_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(dockerpublisher_gennodejs)
add_dependencies(dockerpublisher_gennodejs dockerpublisher_generate_messages_nodejs)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS dockerpublisher_generate_messages_nodejs)

### Section generating for lang: genpy
### Generating Messages
_generate_msg_py(dockerpublisher
  "/home/dev/catkin_ws/src/dockerpublisher/msg/Num.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/dockerpublisher
)

### Generating Services
_generate_srv_py(dockerpublisher
  "/home/dev/catkin_ws/src/dockerpublisher/srv/AddTwoInts.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/dockerpublisher
)

### Generating Module File
_generate_module_py(dockerpublisher
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/dockerpublisher
  "${ALL_GEN_OUTPUT_FILES_py}"
)

add_custom_target(dockerpublisher_generate_messages_py
  DEPENDS ${ALL_GEN_OUTPUT_FILES_py}
)
add_dependencies(dockerpublisher_generate_messages dockerpublisher_generate_messages_py)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/dev/catkin_ws/src/dockerpublisher/msg/Num.msg" NAME_WE)
add_dependencies(dockerpublisher_generate_messages_py _dockerpublisher_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/dev/catkin_ws/src/dockerpublisher/srv/AddTwoInts.srv" NAME_WE)
add_dependencies(dockerpublisher_generate_messages_py _dockerpublisher_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(dockerpublisher_genpy)
add_dependencies(dockerpublisher_genpy dockerpublisher_generate_messages_py)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS dockerpublisher_generate_messages_py)



if(gencpp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/dockerpublisher)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/dockerpublisher
    DESTINATION ${gencpp_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_cpp)
  add_dependencies(dockerpublisher_generate_messages_cpp std_msgs_generate_messages_cpp)
endif()

if(geneus_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/dockerpublisher)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/dockerpublisher
    DESTINATION ${geneus_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_eus)
  add_dependencies(dockerpublisher_generate_messages_eus std_msgs_generate_messages_eus)
endif()

if(genlisp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/dockerpublisher)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/dockerpublisher
    DESTINATION ${genlisp_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_lisp)
  add_dependencies(dockerpublisher_generate_messages_lisp std_msgs_generate_messages_lisp)
endif()

if(gennodejs_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/dockerpublisher)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/dockerpublisher
    DESTINATION ${gennodejs_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_nodejs)
  add_dependencies(dockerpublisher_generate_messages_nodejs std_msgs_generate_messages_nodejs)
endif()

if(genpy_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/dockerpublisher)
  install(CODE "execute_process(COMMAND \"/usr/bin/python2\" -m compileall \"${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/dockerpublisher\")")
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/dockerpublisher
    DESTINATION ${genpy_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_py)
  add_dependencies(dockerpublisher_generate_messages_py std_msgs_generate_messages_py)
endif()
