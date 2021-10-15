# - FindXKBFILE
#
# Copyright (c) 2015 XDX Corporation

find_package(PkgConfig)

include(FindPackageHandleStandardArgs)
set(XKBFILE_FOUND true)
set(XKBFILE_INCLUDE_DIRS "")
set(XKBFILE_LIBRARIES "")
set(comp "file")
string(TOUPPER ${comp} compname)
set(headname "X11/extensions/XKBfile.h")
set(fullname "xkbfile")
set(libname ${fullname})
set(module "XKBFILE")

pkg_check_modules(PC_${fullname} QUIET ${fullname})
message("current path is ${XSERVER_SOURCE_DIR}")
set(THIRDDIR ${IMPORTEDDIR}/third)
message(STATUS "THIRDDIR: ${THIRDDIR}")


find_path(XKBFILE_INCLUDE_DIR
	NAMES ${headname}
	PATHS
	/usr/include
	/usr/local/include
	${THIRDDIR}/libxkbfile-1.1.0/include
	)
	
if(XKBFILE_INCLUDE_DIR-NOTFOUND)
	message(STATUS "not find include file ${headname}")
else()
	message(STATUS "found include file dir ${headname} in dir ${XKBFILE_INCLUDE_DIR}")
endif()

find_library(XKBFILE_LIBRARY NAMES ${libname}
	PATHS
	/usr/lib
	/usr/lib64
	/usr/lib32
	${THIRDDIR}/libxkbfile-1.1.0/lib
	)

if(XKBFILE_LIBRARY-NOTFOUND)
	message(STATUS "ERROR not find lib file ")
else()
	message(STATUS "Find lib ${libname} in dir ${XKBFILE_LIBRARY}")
endif()

#FIND_PACKAGE_HANDLE_STANDARD_ARGS vs find_package_handle_standard_args
FIND_PACKAGE_HANDLE_STANDARD_ARGS(XKBFILE DEFAULT_MSG
	XKBFILE_INCLUDE_DIR XKBFILE_LIBRARY)

mark_as_advanced(XKBFILE_INCLUDE_DIR XKBFILE_LIBRARY)

#list(APPEND CMAKE_INCLUDE_PATH XKBFILE_INCLUDE_DIR)
#list(APPEND CMAKE_LIBRARY_PATH XKBFILE_LIBRARY)	

if(NOT XKBFILE_FOUND)
	set(XKBFILE_FOUND false)
	message("### xkbfile requirment ${fullname} not found")
endif()
list(REMOVE_DUPLICATES XKBFILE_INCLUDE_DIR)
