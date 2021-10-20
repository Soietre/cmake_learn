set(PIXMAN_PATH "${IMPORTEDDIR}/third/pixman-0.40.0")



set(PIXMAN_INCLUDE_DIR "${PIXMAN_PATH}/include/pixman-1")
set(PIXMAN_LIB_DIR "${PIXMAN_PATH}/lib")

find_path(PIXMAN_INCLUDE_DIR NAMES pixman.h PATHS  "${PIXMAN_PATH}/include/pixman-1")
find_library(PIXMAN_LIBDIR  NAMES libpixman.so PATHS "${PIXMAN_PATH}/lib")
mark_as_advanced(PIXMAN_INCLUDE_DIR)
mark_as_advanced(PIXMAN_LIB_DIR)

set(PIXMAN_FOUND "")
set(PIXMAN_CFLAGS "-I${PIXMAN_INCLUDE_DIR} -I${PIXMAN_PATH}/include ")
set(PIXMAN_LIBS "-L${PIXMAN_LIB_DIR} ")

if(EXISTS "${PIXMAN_LIB_DIR}/libpixman-1.so")
	set(PIXMAN_FOUND TRUE)
	string(APPEND PIXMAN_LIBS "-lpixman-1 ")
else()
	set(PIXMAN_FOUND FALSE)
	message(FATAL_ERROR "Don't exists module libpixman-1.so")
endif()

#add_library(
string(APPEND XSERVERCFLAGS_CFLAGS ${PIXMAN_CFLAGS})
string(APPEND XSERVERCFLAGS_LIBS ${PIXMAN_LIBS})
#string(APPEND XSERVERLIBS_CFLAGS ${PIXMAN_CFLAGS})
#string(APPEND XSERVERLIBS_LIBS ${PIXMAN_LIBS})
