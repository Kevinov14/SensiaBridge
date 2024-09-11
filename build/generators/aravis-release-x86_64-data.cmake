########### AGGREGATED COMPONENTS AND DEPENDENCIES FOR THE MULTI CONFIG #####################
#############################################################################################

set(aravis_COMPONENT_NAMES "")
if(DEFINED aravis_FIND_DEPENDENCY_NAMES)
  list(APPEND aravis_FIND_DEPENDENCY_NAMES glib libxml2 libusb ZLIB)
  list(REMOVE_DUPLICATES aravis_FIND_DEPENDENCY_NAMES)
else()
  set(aravis_FIND_DEPENDENCY_NAMES glib libxml2 libusb ZLIB)
endif()
set(glib_FIND_MODE "NO_MODULE")
set(libxml2_FIND_MODE "NO_MODULE")
set(libusb_FIND_MODE "NO_MODULE")
set(ZLIB_FIND_MODE "NO_MODULE")

########### VARIABLES #######################################################################
#############################################################################################
set(aravis_PACKAGE_FOLDER_RELEASE "C:/Users/KevinOsorioVelasquez/.conan2/p/aravi6bc74b4ecf707/p")
set(aravis_BUILD_MODULES_PATHS_RELEASE )


set(aravis_INCLUDE_DIRS_RELEASE "${aravis_PACKAGE_FOLDER_RELEASE}/include/aravis-0.8")
set(aravis_RES_DIRS_RELEASE )
set(aravis_DEFINITIONS_RELEASE )
set(aravis_SHARED_LINK_FLAGS_RELEASE )
set(aravis_EXE_LINK_FLAGS_RELEASE )
set(aravis_OBJECTS_RELEASE )
set(aravis_COMPILE_DEFINITIONS_RELEASE )
set(aravis_COMPILE_OPTIONS_C_RELEASE )
set(aravis_COMPILE_OPTIONS_CXX_RELEASE )
set(aravis_LIB_DIRS_RELEASE "${aravis_PACKAGE_FOLDER_RELEASE}/lib")
set(aravis_BIN_DIRS_RELEASE )
set(aravis_LIBRARY_TYPE_RELEASE STATIC)
set(aravis_IS_HOST_WINDOWS_RELEASE 1)
set(aravis_LIBS_RELEASE aravis-0.8)
set(aravis_SYSTEM_LIBS_RELEASE ws2_32 iphlpapi)
set(aravis_FRAMEWORK_DIRS_RELEASE )
set(aravis_FRAMEWORKS_RELEASE )
set(aravis_BUILD_DIRS_RELEASE )
set(aravis_NO_SONAME_MODE_RELEASE FALSE)


# COMPOUND VARIABLES
set(aravis_COMPILE_OPTIONS_RELEASE
    "$<$<COMPILE_LANGUAGE:CXX>:${aravis_COMPILE_OPTIONS_CXX_RELEASE}>"
    "$<$<COMPILE_LANGUAGE:C>:${aravis_COMPILE_OPTIONS_C_RELEASE}>")
set(aravis_LINKER_FLAGS_RELEASE
    "$<$<STREQUAL:$<TARGET_PROPERTY:TYPE>,SHARED_LIBRARY>:${aravis_SHARED_LINK_FLAGS_RELEASE}>"
    "$<$<STREQUAL:$<TARGET_PROPERTY:TYPE>,MODULE_LIBRARY>:${aravis_SHARED_LINK_FLAGS_RELEASE}>"
    "$<$<STREQUAL:$<TARGET_PROPERTY:TYPE>,EXECUTABLE>:${aravis_EXE_LINK_FLAGS_RELEASE}>")


set(aravis_COMPONENTS_RELEASE )