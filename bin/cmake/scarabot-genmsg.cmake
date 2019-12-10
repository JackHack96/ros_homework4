# generated from genmsg/cmake/pkg-genmsg.cmake.em

message(STATUS "scarabot: 1 messages, 1 services")

set(MSG_I_FLAGS "-Iscarabot:/home/matteo/catkin_ws/src/scarabot/msg;-Istd_msgs:/opt/ros/melodic/share/std_msgs/cmake/../msg")

# Find all generators
find_package(gencpp REQUIRED)
find_package(geneus REQUIRED)
find_package(genlisp REQUIRED)
find_package(gennodejs REQUIRED)
find_package(genpy REQUIRED)

add_custom_target(scarabot_generate_messages ALL)

# verify that message/service dependencies have not changed since configure



get_filename_component(_filename "/home/matteo/catkin_ws/src/scarabot/msg/Message.msg" NAME_WE)
add_custom_target(_scarabot_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "scarabot" "/home/matteo/catkin_ws/src/scarabot/msg/Message.msg" ""
)

get_filename_component(_filename "/home/matteo/catkin_ws/src/scarabot/srv/Service.srv" NAME_WE)
add_custom_target(_scarabot_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "scarabot" "/home/matteo/catkin_ws/src/scarabot/srv/Service.srv" ""
)

#
#  langs = gencpp;geneus;genlisp;gennodejs;genpy
#

### Section generating for lang: gencpp
### Generating Messages
_generate_msg_cpp(scarabot
  "/home/matteo/catkin_ws/src/scarabot/msg/Message.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/scarabot
)

### Generating Services
_generate_srv_cpp(scarabot
  "/home/matteo/catkin_ws/src/scarabot/srv/Service.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/scarabot
)

### Generating Module File
_generate_module_cpp(scarabot
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/scarabot
  "${ALL_GEN_OUTPUT_FILES_cpp}"
)

add_custom_target(scarabot_generate_messages_cpp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_cpp}
)
add_dependencies(scarabot_generate_messages scarabot_generate_messages_cpp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/matteo/catkin_ws/src/scarabot/msg/Message.msg" NAME_WE)
add_dependencies(scarabot_generate_messages_cpp _scarabot_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/matteo/catkin_ws/src/scarabot/srv/Service.srv" NAME_WE)
add_dependencies(scarabot_generate_messages_cpp _scarabot_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(scarabot_gencpp)
add_dependencies(scarabot_gencpp scarabot_generate_messages_cpp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS scarabot_generate_messages_cpp)

### Section generating for lang: geneus
### Generating Messages
_generate_msg_eus(scarabot
  "/home/matteo/catkin_ws/src/scarabot/msg/Message.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/scarabot
)

### Generating Services
_generate_srv_eus(scarabot
  "/home/matteo/catkin_ws/src/scarabot/srv/Service.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/scarabot
)

### Generating Module File
_generate_module_eus(scarabot
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/scarabot
  "${ALL_GEN_OUTPUT_FILES_eus}"
)

add_custom_target(scarabot_generate_messages_eus
  DEPENDS ${ALL_GEN_OUTPUT_FILES_eus}
)
add_dependencies(scarabot_generate_messages scarabot_generate_messages_eus)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/matteo/catkin_ws/src/scarabot/msg/Message.msg" NAME_WE)
add_dependencies(scarabot_generate_messages_eus _scarabot_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/matteo/catkin_ws/src/scarabot/srv/Service.srv" NAME_WE)
add_dependencies(scarabot_generate_messages_eus _scarabot_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(scarabot_geneus)
add_dependencies(scarabot_geneus scarabot_generate_messages_eus)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS scarabot_generate_messages_eus)

### Section generating for lang: genlisp
### Generating Messages
_generate_msg_lisp(scarabot
  "/home/matteo/catkin_ws/src/scarabot/msg/Message.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/scarabot
)

### Generating Services
_generate_srv_lisp(scarabot
  "/home/matteo/catkin_ws/src/scarabot/srv/Service.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/scarabot
)

### Generating Module File
_generate_module_lisp(scarabot
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/scarabot
  "${ALL_GEN_OUTPUT_FILES_lisp}"
)

add_custom_target(scarabot_generate_messages_lisp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_lisp}
)
add_dependencies(scarabot_generate_messages scarabot_generate_messages_lisp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/matteo/catkin_ws/src/scarabot/msg/Message.msg" NAME_WE)
add_dependencies(scarabot_generate_messages_lisp _scarabot_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/matteo/catkin_ws/src/scarabot/srv/Service.srv" NAME_WE)
add_dependencies(scarabot_generate_messages_lisp _scarabot_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(scarabot_genlisp)
add_dependencies(scarabot_genlisp scarabot_generate_messages_lisp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS scarabot_generate_messages_lisp)

### Section generating for lang: gennodejs
### Generating Messages
_generate_msg_nodejs(scarabot
  "/home/matteo/catkin_ws/src/scarabot/msg/Message.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/scarabot
)

### Generating Services
_generate_srv_nodejs(scarabot
  "/home/matteo/catkin_ws/src/scarabot/srv/Service.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/scarabot
)

### Generating Module File
_generate_module_nodejs(scarabot
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/scarabot
  "${ALL_GEN_OUTPUT_FILES_nodejs}"
)

add_custom_target(scarabot_generate_messages_nodejs
  DEPENDS ${ALL_GEN_OUTPUT_FILES_nodejs}
)
add_dependencies(scarabot_generate_messages scarabot_generate_messages_nodejs)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/matteo/catkin_ws/src/scarabot/msg/Message.msg" NAME_WE)
add_dependencies(scarabot_generate_messages_nodejs _scarabot_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/matteo/catkin_ws/src/scarabot/srv/Service.srv" NAME_WE)
add_dependencies(scarabot_generate_messages_nodejs _scarabot_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(scarabot_gennodejs)
add_dependencies(scarabot_gennodejs scarabot_generate_messages_nodejs)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS scarabot_generate_messages_nodejs)

### Section generating for lang: genpy
### Generating Messages
_generate_msg_py(scarabot
  "/home/matteo/catkin_ws/src/scarabot/msg/Message.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/scarabot
)

### Generating Services
_generate_srv_py(scarabot
  "/home/matteo/catkin_ws/src/scarabot/srv/Service.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/scarabot
)

### Generating Module File
_generate_module_py(scarabot
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/scarabot
  "${ALL_GEN_OUTPUT_FILES_py}"
)

add_custom_target(scarabot_generate_messages_py
  DEPENDS ${ALL_GEN_OUTPUT_FILES_py}
)
add_dependencies(scarabot_generate_messages scarabot_generate_messages_py)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/matteo/catkin_ws/src/scarabot/msg/Message.msg" NAME_WE)
add_dependencies(scarabot_generate_messages_py _scarabot_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/matteo/catkin_ws/src/scarabot/srv/Service.srv" NAME_WE)
add_dependencies(scarabot_generate_messages_py _scarabot_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(scarabot_genpy)
add_dependencies(scarabot_genpy scarabot_generate_messages_py)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS scarabot_generate_messages_py)



if(gencpp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/scarabot)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/scarabot
    DESTINATION ${gencpp_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_cpp)
  add_dependencies(scarabot_generate_messages_cpp std_msgs_generate_messages_cpp)
endif()

if(geneus_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/scarabot)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/scarabot
    DESTINATION ${geneus_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_eus)
  add_dependencies(scarabot_generate_messages_eus std_msgs_generate_messages_eus)
endif()

if(genlisp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/scarabot)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/scarabot
    DESTINATION ${genlisp_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_lisp)
  add_dependencies(scarabot_generate_messages_lisp std_msgs_generate_messages_lisp)
endif()

if(gennodejs_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/scarabot)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/scarabot
    DESTINATION ${gennodejs_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_nodejs)
  add_dependencies(scarabot_generate_messages_nodejs std_msgs_generate_messages_nodejs)
endif()

if(genpy_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/scarabot)
  install(CODE "execute_process(COMMAND \"/usr/bin/python2\" -m compileall \"${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/scarabot\")")
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/scarabot
    DESTINATION ${genpy_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_py)
  add_dependencies(scarabot_generate_messages_py std_msgs_generate_messages_py)
endif()
