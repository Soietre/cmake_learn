if(NOT DEFINED GLOBAL_ROOT_SRC_DIR)
	get_filename_component(GLOBAL_ROOT_SRC_DIR ${PROJECT_SOURCE_DIR}/../.. ABSOLUTE)
	set(GLOBAL_ROOT_SRC_DIR ${GLOBAL_ROOT_SRC_DIR} CACHE STRING "Global root source directory.")
endif()

#set(COMPILER_PATH ${GLOBAL_ROOT_SRC_DIR}/compiler)
set(GENERATED_CODE_OUT ${OUT}/generated)


###CMake Includes ################
set(CMAKE_MODULE_PATH ${GLOBAL_ROOT_SRC_DIR}/cmake)
list(APPEND CMAKE_MODULE_PATH ${GLOBAL_ROOT_SRC_DIR}/cmake/modules)

#message("####COMPILER_PATH=${COMPILER_PATH}")
message("####GENERATED_CODE_OUT= ${GENERATED_CODE_OUT}")

###Set Global Config#######
#include(${GLOBAL_ROOT_SRC_DIR}/cmake/Configure.cmake)
#set_configure()
#configure_file(
#	${GLOBAL_ROOT_SRC_DIR}/config/config.h.in
#	${GEERATED_CODE_OUT}/config.h
#)
#include(${GLOBAL_ROOT_SRC_DIR}/cmake/CompilerFlags.cmake)

###project options####
#include(${GLOBAL_ROOT_SRC_DIR}/cmake/Options.cmake)
#set_options()
