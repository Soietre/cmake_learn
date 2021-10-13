# - FindXKBFILE
#
# Copyright (c) 2015 XDX Corporation
cmake_minimum_required(VERSION 3.16)

project(findpack)

find_package(PkgConfig)

if(NOT XKBFILE_FIND_COMPONENTS)
	set(XCB_FIND_COMPONENTS file)
endif()

include(FindPackageHandleStandardArgs)
set(XKBFILE_FOUND true)
set(XKBFILE_INCLUDE_DIRS "")
set(XKBFILE_LIBRARIES "")

message("##begin to find xkbfile")
#foreach (comp ${XKBFILE_FIND_COMPONENTS})
	# component name
	#string(TOUPPER ${comp} compname)
	set(comp "file")
	message("####enter foreach loop")
	set(headname "X11/extensions/XKB${comp}.h")
	set(fullname "xkb${comp}")
	set(libname ${fullname})
	string(TOUPPER ${comp} compname)
	set(module "XKB${compname}")


	message("HEADNAME : ${headname}")
	message("LIBNAME : ${libname}")
	message("module : ${module}")

	pkg_check_modules(PC_${fullname} QUIET ${fullname})

	message("current path is ${PROJECT_SOURCE_DIR}")
	#set(CMAKE_INCLUDE_PATH ${PROJECT_SOURCE_DIR}/libxkbfile-1.1.0/install/include)

	find_path(XKBFILE_INCLUDE_DIR
	       	NAMES ${headname}
		PATHS ${PROJECT_SOURCE_DIR}/libxkbfile-1.1.0/install/include
		)
	if(XKBFILE_INCLUDE_DIR-NOTFOUND)
		message(STATUS "not find include file ${headname}")
	else()
		message(STATUS "found include file dir ${headname} in dir")
		message("include dir is ${XKBFILE_INCLUDE_DIR}")
	endif()
	

	find_library(XKBFILE_LIBRARY NAMES ${libname}
		PATHS ${PROJECT_SOURCE_DIR}/libxkbfile-1.1.0/install/lib
		)

	if(XKBFILE_LIBRARY-NOTFOUND)
		message(STATUS "ERROR not find lib file ")
	else()
		message(STATUS "Find lib${libname}.a in dir")
		message("lib dir is ${XKBFILE_LIBRARY}")
	endif()


	find_package_handle_standard_args(xkbfile
		FOUND_VAR XKBFILE_FOUND
		REQUIRED_VARS XKBFILE_INCLUDE_DIR XKBFILE_LIBRARY)
	mark_as_advanced(XKBFILE_INCLUDE_DIR XKBFILE_LIBRARY)



	message("XKBFILE_INCLUDE_DIR: ${XKBFILE_INCLUDE_DIR}")
	message("XKBFILE_LIBRARIES: ${XKBFILE_LIBRARY}")

	if(NOT ${fullname}_FOUND)
		set(XKBFILE_FOUND false)
		message("### xkbfile requirment ${fullname} not found")
	endif()
	#endforeach()
list(REMOVE_DUPLICATES XKB_INCLUDE_DIRS)


