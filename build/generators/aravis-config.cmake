########## MACROS ###########################################################################
#############################################################################################

# Requires CMake > 3.15
if(${CMAKE_VERSION} VERSION_LESS "3.15")
    message(FATAL_ERROR "The 'CMakeDeps' generator only works with CMake >= 3.15")
endif()

if(aravis_FIND_QUIETLY)
    set(aravis_MESSAGE_MODE VERBOSE)
else()
    set(aravis_MESSAGE_MODE STATUS)
endif()

include(${CMAKE_CURRENT_LIST_DIR}/cmakedeps_macros.cmake)
include(${CMAKE_CURRENT_LIST_DIR}/aravisTargets.cmake)
include(CMakeFindDependencyMacro)

check_build_type_defined()

foreach(_DEPENDENCY ${aravis_FIND_DEPENDENCY_NAMES} )
    # Check that we have not already called a find_package with the transitive dependency
    if(NOT ${_DEPENDENCY}_FOUND)
        find_dependency(${_DEPENDENCY} REQUIRED ${${_DEPENDENCY}_FIND_MODE})
    endif()
endforeach()

set(aravis_VERSION_STRING "0.8.30")
set(aravis_INCLUDE_DIRS ${aravis_INCLUDE_DIRS_RELEASE} )
set(aravis_INCLUDE_DIR ${aravis_INCLUDE_DIRS_RELEASE} )
set(aravis_LIBRARIES ${aravis_LIBRARIES_RELEASE} )
set(aravis_DEFINITIONS ${aravis_DEFINITIONS_RELEASE} )


# Only the last installed configuration BUILD_MODULES are included to avoid the collision
foreach(_BUILD_MODULE ${aravis_BUILD_MODULES_PATHS_RELEASE} )
    message(${aravis_MESSAGE_MODE} "Conan: Including build module from '${_BUILD_MODULE}'")
    include(${_BUILD_MODULE})
endforeach()


