# Avoid multiple calls to find_package to append duplicated properties to the targets
include_guard()########### VARIABLES #######################################################################
#############################################################################################
set(aravis_FRAMEWORKS_FOUND_RELEASE "") # Will be filled later
conan_find_apple_frameworks(aravis_FRAMEWORKS_FOUND_RELEASE "${aravis_FRAMEWORKS_RELEASE}" "${aravis_FRAMEWORK_DIRS_RELEASE}")

set(aravis_LIBRARIES_TARGETS "") # Will be filled later


######## Create an interface target to contain all the dependencies (frameworks, system and conan deps)
if(NOT TARGET aravis_DEPS_TARGET)
    add_library(aravis_DEPS_TARGET INTERFACE IMPORTED)
endif()

set_property(TARGET aravis_DEPS_TARGET
             APPEND PROPERTY INTERFACE_LINK_LIBRARIES
             $<$<CONFIG:Release>:${aravis_FRAMEWORKS_FOUND_RELEASE}>
             $<$<CONFIG:Release>:${aravis_SYSTEM_LIBS_RELEASE}>
             $<$<CONFIG:Release>:glib::glib;LibXml2::LibXml2;libusb::libusb;ZLIB::ZLIB>)

####### Find the libraries declared in cpp_info.libs, create an IMPORTED target for each one and link the
####### aravis_DEPS_TARGET to all of them
conan_package_library_targets("${aravis_LIBS_RELEASE}"    # libraries
                              "${aravis_LIB_DIRS_RELEASE}" # package_libdir
                              "${aravis_BIN_DIRS_RELEASE}" # package_bindir
                              "${aravis_LIBRARY_TYPE_RELEASE}"
                              "${aravis_IS_HOST_WINDOWS_RELEASE}"
                              aravis_DEPS_TARGET
                              aravis_LIBRARIES_TARGETS  # out_libraries_targets
                              "_RELEASE"
                              "aravis"    # package_name
                              "${aravis_NO_SONAME_MODE_RELEASE}")  # soname

# FIXME: What is the result of this for multi-config? All configs adding themselves to path?
set(CMAKE_MODULE_PATH ${aravis_BUILD_DIRS_RELEASE} ${CMAKE_MODULE_PATH})

########## GLOBAL TARGET PROPERTIES Release ########################################
    set_property(TARGET aravis::aravis
                 APPEND PROPERTY INTERFACE_LINK_LIBRARIES
                 $<$<CONFIG:Release>:${aravis_OBJECTS_RELEASE}>
                 $<$<CONFIG:Release>:${aravis_LIBRARIES_TARGETS}>
                 )

    if("${aravis_LIBS_RELEASE}" STREQUAL "")
        # If the package is not declaring any "cpp_info.libs" the package deps, system libs,
        # frameworks etc are not linked to the imported targets and we need to do it to the
        # global target
        set_property(TARGET aravis::aravis
                     APPEND PROPERTY INTERFACE_LINK_LIBRARIES
                     aravis_DEPS_TARGET)
    endif()

    set_property(TARGET aravis::aravis
                 APPEND PROPERTY INTERFACE_LINK_OPTIONS
                 $<$<CONFIG:Release>:${aravis_LINKER_FLAGS_RELEASE}>)
    set_property(TARGET aravis::aravis
                 APPEND PROPERTY INTERFACE_INCLUDE_DIRECTORIES
                 $<$<CONFIG:Release>:${aravis_INCLUDE_DIRS_RELEASE}>)
    # Necessary to find LINK shared libraries in Linux
    set_property(TARGET aravis::aravis
                 APPEND PROPERTY INTERFACE_LINK_DIRECTORIES
                 $<$<CONFIG:Release>:${aravis_LIB_DIRS_RELEASE}>)
    set_property(TARGET aravis::aravis
                 APPEND PROPERTY INTERFACE_COMPILE_DEFINITIONS
                 $<$<CONFIG:Release>:${aravis_COMPILE_DEFINITIONS_RELEASE}>)
    set_property(TARGET aravis::aravis
                 APPEND PROPERTY INTERFACE_COMPILE_OPTIONS
                 $<$<CONFIG:Release>:${aravis_COMPILE_OPTIONS_RELEASE}>)

########## For the modules (FindXXX)
set(aravis_LIBRARIES_RELEASE aravis::aravis)
