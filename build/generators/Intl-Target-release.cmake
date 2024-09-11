# Avoid multiple calls to find_package to append duplicated properties to the targets
include_guard()########### VARIABLES #######################################################################
#############################################################################################
set(libgettext_FRAMEWORKS_FOUND_RELEASE "") # Will be filled later
conan_find_apple_frameworks(libgettext_FRAMEWORKS_FOUND_RELEASE "${libgettext_FRAMEWORKS_RELEASE}" "${libgettext_FRAMEWORK_DIRS_RELEASE}")

set(libgettext_LIBRARIES_TARGETS "") # Will be filled later


######## Create an interface target to contain all the dependencies (frameworks, system and conan deps)
if(NOT TARGET libgettext_DEPS_TARGET)
    add_library(libgettext_DEPS_TARGET INTERFACE IMPORTED)
endif()

set_property(TARGET libgettext_DEPS_TARGET
             APPEND PROPERTY INTERFACE_LINK_LIBRARIES
             $<$<CONFIG:Release>:${libgettext_FRAMEWORKS_FOUND_RELEASE}>
             $<$<CONFIG:Release>:${libgettext_SYSTEM_LIBS_RELEASE}>
             $<$<CONFIG:Release>:Iconv::Iconv>)

####### Find the libraries declared in cpp_info.libs, create an IMPORTED target for each one and link the
####### libgettext_DEPS_TARGET to all of them
conan_package_library_targets("${libgettext_LIBS_RELEASE}"    # libraries
                              "${libgettext_LIB_DIRS_RELEASE}" # package_libdir
                              "${libgettext_BIN_DIRS_RELEASE}" # package_bindir
                              "${libgettext_LIBRARY_TYPE_RELEASE}"
                              "${libgettext_IS_HOST_WINDOWS_RELEASE}"
                              libgettext_DEPS_TARGET
                              libgettext_LIBRARIES_TARGETS  # out_libraries_targets
                              "_RELEASE"
                              "libgettext"    # package_name
                              "${libgettext_NO_SONAME_MODE_RELEASE}")  # soname

# FIXME: What is the result of this for multi-config? All configs adding themselves to path?
set(CMAKE_MODULE_PATH ${libgettext_BUILD_DIRS_RELEASE} ${CMAKE_MODULE_PATH})

########## GLOBAL TARGET PROPERTIES Release ########################################
    set_property(TARGET Intl::Intl
                 APPEND PROPERTY INTERFACE_LINK_LIBRARIES
                 $<$<CONFIG:Release>:${libgettext_OBJECTS_RELEASE}>
                 $<$<CONFIG:Release>:${libgettext_LIBRARIES_TARGETS}>
                 )

    if("${libgettext_LIBS_RELEASE}" STREQUAL "")
        # If the package is not declaring any "cpp_info.libs" the package deps, system libs,
        # frameworks etc are not linked to the imported targets and we need to do it to the
        # global target
        set_property(TARGET Intl::Intl
                     APPEND PROPERTY INTERFACE_LINK_LIBRARIES
                     libgettext_DEPS_TARGET)
    endif()

    set_property(TARGET Intl::Intl
                 APPEND PROPERTY INTERFACE_LINK_OPTIONS
                 $<$<CONFIG:Release>:${libgettext_LINKER_FLAGS_RELEASE}>)
    set_property(TARGET Intl::Intl
                 APPEND PROPERTY INTERFACE_INCLUDE_DIRECTORIES
                 $<$<CONFIG:Release>:${libgettext_INCLUDE_DIRS_RELEASE}>)
    # Necessary to find LINK shared libraries in Linux
    set_property(TARGET Intl::Intl
                 APPEND PROPERTY INTERFACE_LINK_DIRECTORIES
                 $<$<CONFIG:Release>:${libgettext_LIB_DIRS_RELEASE}>)
    set_property(TARGET Intl::Intl
                 APPEND PROPERTY INTERFACE_COMPILE_DEFINITIONS
                 $<$<CONFIG:Release>:${libgettext_COMPILE_DEFINITIONS_RELEASE}>)
    set_property(TARGET Intl::Intl
                 APPEND PROPERTY INTERFACE_COMPILE_OPTIONS
                 $<$<CONFIG:Release>:${libgettext_COMPILE_OPTIONS_RELEASE}>)

########## For the modules (FindXXX)
set(libgettext_LIBRARIES_RELEASE Intl::Intl)
