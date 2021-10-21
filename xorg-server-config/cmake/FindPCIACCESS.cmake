message("GLOBAL_ROOT_SRC_DIR : ${GLOBAL_ROOT_SRC_DIR}")

set(PCI_PATH "${GLOBAL_ROOT_SRC_DIR}/imported/third/libpciaccess-0.16")

find_path(PCI_INCLUDE_DIR NAMES pciaccess.h)

if(PCI_INCLUDE_DIR-NOTFOUND)
	message("not found pciaccess.h in the env path")
	set(PCI_INCLUDE_DIR "${PCI_PATH}/include")
endif()

find_library(PCI_LIBDIR NAMES libpciaccess.so PATHS)
if(PCI_LIBDIR-NOTFOUND)
	message("not found libpciaccess.so")
	set(PCI_LIB_DIR "${PCI_PATH}/lib")
	find_library(PCI_LIBDIR NAMES libpciaccess.so PATHS ${PCI_LIB_DIR})
endif()

set(PCIACCESS_CFLAGS "-I${PCI_INCLUDE_DIR} ")
set(PCIACCESS_LIBS "-L${PCI_LIB_DIR} -lpciaccess ")

