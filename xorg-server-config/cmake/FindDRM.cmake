#--Try to find libdrm
#once done, this will define
#DRM_FOUND --system has drm
#DRM_INCLUDE_DIR --drm include dir
#DRM_LIBRATIES - link these to use drm

set(DRMPATH "${IMPORTEDDIR}/third/libdrm-2.4.107")
message("DRM_SRC_PATH : ${DRMPATH}")

if(NOT DRM_FIND_COMPONENTS)
	set(DRM_FIND_COMPNENTS drm)
else()
	message("has components")
endif()

set(DRM_INCLUDE_DIR "${DRMPATH}/include")
#set(DRM_INCLUDE_DIR_DRM "${DRMPATH}/include/libdrm")
#set(DRM_INCLUDE_DIR_KMS "${DRMPATH}/include/libkms")
set(DRM_LIB_DIR "${DRMPATH}/lib/x86_64-linux-gnu")
set(DRM_CFLAGS "")
set(DRM_LIBS "")

string(APPEND DRM_CFLAGS "-I${DRM_INCLUDE_DIR} ")
string(APPEND DRM_LIBS "-L${DRM_LIB_DIR} ")

foreach(comp ${DRM_FIND_COMPONENTS})
	string(TOLOWER ${comp} compname)
	if(EXISTS "${DRM_LIB_DIR}/lib${compname}.so")
		string(APPEND DRM_LIBS "-l${compname} ")
		string(APPEND DRM_CFLAGS "-I${DRM_INCLUDE_DIR}/lib${compname} ")
	else()
		message(FATAL_ERROR "Don't exists module")
	endif()
endforeach()

message("DRM_CFLAGS: ${DRM_CFLAGS}")
message("DRM_LIBS: ${DRM_LIBS}")

string(APPEND XSERVERCFLAGS_CFLAGS ${DRM_CFLAGS})
string(APPEND XSERVERCFLAGS_LIBS ${DRM_LIBS})

message("XSERVERCFLAGS_CFLAGS: ${XSERVERCFLAGS_CFLAGS}")
message("XSERVERCFLAGS_LIBS :${XSERVERCFLAGS_LIBS}")

FIND_PATH(DRM_INCLUDE_DIR libdrm/drm.h
	/usr/include
	/usr/local/include
	/opt/local/include
	${CMAKE_SOURCE_DIR}/include
	${DRMPATH}/include
	)

FIND_LIBRARY(DRM_LIBRARY drm
	/usr/lib64
	/usr/lib
	/usr/local/lib
	/opt/local/lib
	${CMAKE_SOURCE_DIR}/lib
	${DRMPATH}/lib/x86_64-linux-gnu
	)


if(DRM_INCLUDE_DIR AND DRM_LIBRARY)
	SET(DRM_FOUND TRUE)
	SET(DRM_LIBRARIES ${DRM_LIBRARY})
endif()
