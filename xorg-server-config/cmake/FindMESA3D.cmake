set(MESA_PATH ${GLOBAL_ROOT_SRC_DIR}/imported/third/mesa-20.3.0)
set(MESA_INCLUDE_DIR "${MESA_PATH}/include")
set(MESA_LIB_DIR "${MESA_PATH}/lib//lib/x86_64-linux-gnu")

#gl.h in include/GL and gbm.h in include/ but for gl.h include/ and include/GL should both have
foreach(comp ${MESA3D_FIND_COMPONENTS})
	if("GL" STREQUAL comp)
		find_path(GL_INCLUDE_DIR NAMES GL/gl.h PATHS "${MESA_INCLUDE_DIR}" )
		find_library(GL_LIB_DIR NAMES libGL.so PATHS "${MESA_LIB_DIR}")
		if(GL_INCLUDE_DIR-NOTFOUND)
			message(FATAL_ERROR "not find gl.h")
		else()
			message("find gl.h but use local compiled binary")
		endif()
		mark_as_advanced(GL_INCLUDE_DIR)
		
		message("GL_INCLUDE_DIR : ${GL_INCLUDE_DIR}")
		message("GL_LIB_DIR : ${GL_LIB_DIR}")
		set(GL_INCLUDE_DIR "${MESA_INCLUDE_DIR}/GL")
		set(GL_LIBDIR "${MESA_PATH}/lib/x86_64-linux-gnu")
		
		#for xorg-server configure build GL_CFLAGS GL_LIBS
		set(GL_CFLAGS "-I${MESA_INCLUDE_DIR} -I${GL_INCLUDE_DIR} ")
		set(GL_LIBS "-L${MESA_LIB_DIR} -lGL")
		
		message("GL_INCLUDE_DIR : ${GL_INCLUDE_DIR}")
		message("GL_LIBDIR : ${GL_LIBDIR}")
		
		#get_filename_component(GL_CMAKE_DIR "${CMAKE_CURRENT_LIST_DIR}" ABSOLUTE)
		#get_filename_component(GL_INCLUDE_DIR "${CMAKE_CURRENT_LIST_DIR}/../include" ABSOLUTE)
		#get_filename_component(GL_LIB_DIR "${CMAKE_CURRENT_LIST_DIR}/../" ABSOLUTE)
		#message("GL_LIB_DIR : ${GL_LIB_DIR}")
		add_library(GL SHARED IMPORTED)
		
		mark_as_advanced(GL_LIB_DIR GL_INCLUDE_DIR)
	endif()
	if("gbm" STREQUAL comp)
		find_path(GBM_INCLUDE_DIR NAMES gbm.h PATHS "${MESA_PATH}/include")
		find_library(GBM_LIB_DIR NAMES libgbm.so PATHS "${MESA_PATH}/lib/x86_64-linux-gnu")
		if(GBM_INCLUDE_DIR-NOTFOUND)
			message(FATAL_ERROR "gbm.h not find")
		else()
			message("Find gbm.h but use local compiled binary")
		endif()
	
		#set local path to gbm include and lib	
		set(GBM_INCLUDE_DIR ${MESA_INCLUDE_DIR})
		set(GBM_LIBDIR ${MESA_LIB_DIR})

		message("GBM_INCLUDE_DIR : ${GBM_INCLUDE_DIR}")
		message("GBM_LIB_DIR : ${GBM_LIBDIR}")
		#for xorg-server configure
		set(GBM_CFLAGS "-I${MESA_INCLUDE_DIR} ")
		set(GBM_LIBS "-L${MESA_LIB_DIR} -lgbm ")
	endif()

	if("EGL" STREQUAL comp OR "GLESv1" STREQUAL comp OR "GLESv2" STREQUAL comp OR "vulkan" STREQUAL comp)
		message("${comp} not set ")
	endif()
endforeach()


