set(PIXMAN_PATH "${IMPORTEDDIR}/third/pixman-0.40.0")



set(PIXMAN_INCDIR "${PIXMAN_PATH}/include/pixman-1")
set(PIXMAN_LIBDIR "${PIXMAN_PATH}/lib")

set(PIXMAN_FOUND "")
set(PIXMAN_CFLAGS "-I${PIXMAN_INCDIR} -I${PIXMAN_PATH}/include ")
set(PIXMAN_LIBS "-L${PIXMAN_LIBDIR} ")

if(EXISTS "${PIXMAN_LIBDIR}/libpixman-1.so")
	set(PIXMAN_FOUND TRUE)
	string(APPEND PIXMAN_LIBS "-lpixman-1 ")
else()
	set(PIXMAN_FOUND FALSE)
	message(FATAL_ERROR "Don't exists module libpixman-1.so")
endif()


string(APPEND XSERVERCFLAGS_CFLAGS ${PIXMAN_CFLAGS})
string(APPEND XSERVERCFLAGS_LIBS ${PIXMAN_LIBS})
#string(APPEND XSERVERLIBS_CFLAGS ${PIXMAN_CFLAGS})
#string(APPEND XSERVERLIBS_LIBS ${PIXMAN_LIBS})
