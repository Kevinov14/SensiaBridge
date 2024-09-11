# Conan automatically generated toolchain file
# DO NOT EDIT MANUALLY, it will be overwritten

# Avoid including toolchain file several times (bad if appending to variables like
#   CMAKE_CXX_FLAGS. See https://github.com/android/ndk/issues/323
include_guard()
message(STATUS "Using Conan toolchain: ${CMAKE_CURRENT_LIST_FILE}")
if(${CMAKE_VERSION} VERSION_LESS "3.15")
    message(FATAL_ERROR "The 'CMakeToolchain' generator only works with CMake >= 3.15")
endif()

########## 'user_toolchain' block #############
# Include one or more CMake user toolchain from tools.cmake.cmaketoolchain:user_toolchain



########## 'generic_system' block #############
# Definition of system, platform and toolset


set(CMAKE_GENERATOR_PLATFORM "x64" CACHE STRING "" FORCE)

message(STATUS "Conan toolchain: CMAKE_GENERATOR_TOOLSET=v143")
set(CMAKE_GENERATOR_TOOLSET "v143" CACHE STRING "" FORCE)


########## 'compilers' block #############



########## 'libcxx' block #############
# Definition of libcxx from 'compiler.libcxx' setting, defining the
# right CXX_FLAGS for that libcxx



########## 'vs_runtime' block #############
# Definition of VS runtime CMAKE_MSVC_RUNTIME_LIBRARY, from settings build_type,
# compiler.runtime, compiler.runtime_type

cmake_policy(GET CMP0091 POLICY_CMP0091)
if(NOT "${POLICY_CMP0091}" STREQUAL NEW)
    message(FATAL_ERROR "The CMake policy CMP0091 must be NEW, but is '${POLICY_CMP0091}'")
endif()
message(STATUS "Conan toolchain: Setting CMAKE_MSVC_RUNTIME_LIBRARY=$<$<CONFIG:Release>:MultiThreadedDLL>")
set(CMAKE_MSVC_RUNTIME_LIBRARY "$<$<CONFIG:Release>:MultiThreadedDLL>")


########## 'vs_debugger_environment' block #############
# Definition of CMAKE_VS_DEBUGGER_ENVIRONMENT from "bindirs" folders of dependencies
# for execution of applications with shared libraries within the VS IDE

set(CMAKE_VS_DEBUGGER_ENVIRONMENT "PATH=$<$<CONFIG:Release>:C:/Users/KevinOsorioVelasquez/.conan2/p/aravi6bc74b4ecf707/p/bin;C:/Users/KevinOsorioVelasquez/.conan2/p/glib6c7afcf9a418b/p/bin;C:/Users/KevinOsorioVelasquez/.conan2/p/libff4d41809ad9844/p/bin;C:/Users/KevinOsorioVelasquez/.conan2/p/pcre2931125a5a4a79/p/bin;C:/Users/KevinOsorioVelasquez/.conan2/p/libge00124390a106b/p/bin;C:/Users/KevinOsorioVelasquez/.conan2/p/libxmd32a97f0f5b98/p/bin;C:/Users/KevinOsorioVelasquez/.conan2/p/libus67d333fef7355/p/bin;C:/Users/KevinOsorioVelasquez/.conan2/p/openc4a6e97b00f81d/p/bin;C:/Users/KevinOsorioVelasquez/.conan2/p/proto8625022988b17/p/bin;C:/Users/KevinOsorioVelasquez/.conan2/p/ade12af7d213dfb7/p/bin;C:/Users/KevinOsorioVelasquez/.conan2/p/opene252a3319d0c51/p/bin;C:/Users/KevinOsorioVelasquez/.conan2/p/imath80c97b7d55ab8/p/bin;C:/Users/KevinOsorioVelasquez/.conan2/p/libti32b41030ce347/p/bin;C:/Users/KevinOsorioVelasquez/.conan2/p/libde712e34aa8080e/p/bin;C:/Users/KevinOsorioVelasquez/.conan2/p/libjp65bf71d9e338c/p/bin;C:/Users/KevinOsorioVelasquez/.conan2/p/jbigfe9119c355d4c/p/bin;C:/Users/KevinOsorioVelasquez/.conan2/p/zstdd8883d62300dc/p/bin;C:/Users/KevinOsorioVelasquez/.conan2/p/quirc4a07504dcabda/p/bin;C:/Users/KevinOsorioVelasquez/.conan2/p/ffmpe179580fe493df/p/bin;C:/Users/KevinOsorioVelasquez/.conan2/p/xz_ut80f3ba813098e/p/bin;C:/Users/KevinOsorioVelasquez/.conan2/p/libicb4e788959979c/p/bin;C:/Users/KevinOsorioVelasquez/.conan2/p/freet32e1b30696343/p/bin;C:/Users/KevinOsorioVelasquez/.conan2/p/libpn214f4edd5a70e/p/bin;C:/Users/KevinOsorioVelasquez/.conan2/p/bzip25d2dbaf142a52/p/bin;C:/Users/KevinOsorioVelasquez/.conan2/p/brotl79757a5cae055/p/bin;C:/Users/KevinOsorioVelasquez/.conan2/p/openj1ea00cdfeacf5/p/bin;C:/Users/KevinOsorioVelasquez/.conan2/p/openh43a1841d17970/p/bin;C:/Users/KevinOsorioVelasquez/.conan2/p/vorbib3b87ba3196b8/p/bin;C:/Users/KevinOsorioVelasquez/.conan2/p/ogg0603e0d7ed2e4/p/bin;C:/Users/KevinOsorioVelasquez/.conan2/p/opus8462564dcd469/p/bin;C:/Users/KevinOsorioVelasquez/.conan2/p/libx2c168bac69eac9/p/bin;C:/Users/KevinOsorioVelasquez/.conan2/p/libx25e9d5945e8ea8/p/bin;C:/Users/KevinOsorioVelasquez/.conan2/p/libvpa2d818369d33b/p/bin;C:/Users/KevinOsorioVelasquez/.conan2/p/libmpb8490c605ee04/p/bin;C:/Users/KevinOsorioVelasquez/.conan2/p/libfd615fcaf5b2b15/p/bin;C:/Users/KevinOsorioVelasquez/.conan2/p/libweb2503c6aa238e/p/bin;C:/Users/KevinOsorioVelasquez/.conan2/p/opensc171ca1b6d196/p/bin;C:/Users/KevinOsorioVelasquez/.conan2/p/zlib6f797a4dd16fb/p/bin;C:/Users/KevinOsorioVelasquez/.conan2/p/libao5a109c175bbd2/p/bin;C:/Users/KevinOsorioVelasquez/.conan2/p/dav1dc34c0e23007dd/p/bin>;%PATH%")


########## 'cppstd' block #############
# Define the C++ and C standards from 'compiler.cppstd' and 'compiler.cstd'

message(STATUS "Conan toolchain: C++ Standard 14 with extensions OFF")
set(CMAKE_CXX_STANDARD 14)
set(CMAKE_CXX_EXTENSIONS OFF)
set(CMAKE_CXX_STANDARD_REQUIRED ON)


########## 'parallel' block #############
# Define VS paralell build /MP flags

string(APPEND CONAN_CXX_FLAGS " /MP28")
string(APPEND CONAN_C_FLAGS " /MP28")


########## 'extra_flags' block #############
# Include extra C++, C and linker flags from configuration tools.build:<type>flags
# and from CMakeToolchain.extra_<type>_flags

# Conan conf flags start: Release
# Conan conf flags end


########## 'cmake_flags_init' block #############
# Define CMAKE_<XXX>_FLAGS from CONAN_<XXX>_FLAGS

foreach(config IN LISTS CMAKE_CONFIGURATION_TYPES)
    string(TOUPPER ${config} config)
    if(DEFINED CONAN_CXX_FLAGS_${config})
      string(APPEND CMAKE_CXX_FLAGS_${config}_INIT " ${CONAN_CXX_FLAGS_${config}}")
    endif()
    if(DEFINED CONAN_C_FLAGS_${config})
      string(APPEND CMAKE_C_FLAGS_${config}_INIT " ${CONAN_C_FLAGS_${config}}")
    endif()
    if(DEFINED CONAN_SHARED_LINKER_FLAGS_${config})
      string(APPEND CMAKE_SHARED_LINKER_FLAGS_${config}_INIT " ${CONAN_SHARED_LINKER_FLAGS_${config}}")
    endif()
    if(DEFINED CONAN_EXE_LINKER_FLAGS_${config})
      string(APPEND CMAKE_EXE_LINKER_FLAGS_${config}_INIT " ${CONAN_EXE_LINKER_FLAGS_${config}}")
    endif()
endforeach()

if(DEFINED CONAN_CXX_FLAGS)
  string(APPEND CMAKE_CXX_FLAGS_INIT " ${CONAN_CXX_FLAGS}")
endif()
if(DEFINED CONAN_C_FLAGS)
  string(APPEND CMAKE_C_FLAGS_INIT " ${CONAN_C_FLAGS}")
endif()
if(DEFINED CONAN_SHARED_LINKER_FLAGS)
  string(APPEND CMAKE_SHARED_LINKER_FLAGS_INIT " ${CONAN_SHARED_LINKER_FLAGS}")
endif()
if(DEFINED CONAN_EXE_LINKER_FLAGS)
  string(APPEND CMAKE_EXE_LINKER_FLAGS_INIT " ${CONAN_EXE_LINKER_FLAGS}")
endif()


########## 'extra_variables' block #############
# Definition of extra CMake variables from tools.cmake.cmaketoolchain:extra_variables



########## 'try_compile' block #############
# Blocks after this one will not be added when running CMake try/checks

get_property( _CMAKE_IN_TRY_COMPILE GLOBAL PROPERTY IN_TRY_COMPILE )
if(_CMAKE_IN_TRY_COMPILE)
    message(STATUS "Running toolchain IN_TRY_COMPILE")
    return()
endif()


########## 'find_paths' block #############
# Define paths to find packages, programs, libraries, etc.

set(CMAKE_FIND_PACKAGE_PREFER_CONFIG ON)

# Definition of CMAKE_MODULE_PATH
list(PREPEND CMAKE_MODULE_PATH "C:/Users/KevinOsorioVelasquez/.conan2/p/proto8625022988b17/p/lib/cmake/protobuf" "C:/Users/KevinOsorioVelasquez/.conan2/p/openj1ea00cdfeacf5/p/lib/cmake" "C:/Users/KevinOsorioVelasquez/.conan2/p/opensc171ca1b6d196/p/lib/cmake" "C:/Users/KevinOsorioVelasquez/.conan2/p/docte2fe58cbe17539/p/lib/cmake")
# the generators folder (where conan generates files, like this toolchain)
list(PREPEND CMAKE_MODULE_PATH ${CMAKE_CURRENT_LIST_DIR})

# Definition of CMAKE_PREFIX_PATH, CMAKE_XXXXX_PATH
# The explicitly defined "builddirs" of "host" context dependencies must be in PREFIX_PATH
list(PREPEND CMAKE_PREFIX_PATH "C:/Users/KevinOsorioVelasquez/.conan2/p/proto8625022988b17/p/lib/cmake/protobuf" "C:/Users/KevinOsorioVelasquez/.conan2/p/openj1ea00cdfeacf5/p/lib/cmake" "C:/Users/KevinOsorioVelasquez/.conan2/p/opensc171ca1b6d196/p/lib/cmake" "C:/Users/KevinOsorioVelasquez/.conan2/p/docte2fe58cbe17539/p/lib/cmake")
# The Conan local "generators" folder, where this toolchain is saved.
list(PREPEND CMAKE_PREFIX_PATH ${CMAKE_CURRENT_LIST_DIR} )
list(PREPEND CMAKE_PROGRAM_PATH "C:/Users/KevinOsorioVelasquez/.conan2/p/cmake615d6e26ece18/p/bin")
list(PREPEND CMAKE_LIBRARY_PATH "C:/Users/KevinOsorioVelasquez/.conan2/p/aravi6bc74b4ecf707/p/lib" "C:/Users/KevinOsorioVelasquez/.conan2/p/glib6c7afcf9a418b/p/lib" "C:/Users/KevinOsorioVelasquez/.conan2/p/libff4d41809ad9844/p/lib" "C:/Users/KevinOsorioVelasquez/.conan2/p/pcre2931125a5a4a79/p/lib" "C:/Users/KevinOsorioVelasquez/.conan2/p/libge00124390a106b/p/lib" "C:/Users/KevinOsorioVelasquez/.conan2/p/libxmd32a97f0f5b98/p/lib" "C:/Users/KevinOsorioVelasquez/.conan2/p/libus67d333fef7355/p/lib" "C:/Users/KevinOsorioVelasquez/.conan2/p/openc4a6e97b00f81d/p/lib" "lib" "C:/Users/KevinOsorioVelasquez/.conan2/p/proto8625022988b17/p/lib" "C:/Users/KevinOsorioVelasquez/.conan2/p/ade12af7d213dfb7/p/lib" "C:/Users/KevinOsorioVelasquez/.conan2/p/opene252a3319d0c51/p/lib" "C:/Users/KevinOsorioVelasquez/.conan2/p/imath80c97b7d55ab8/p/lib" "C:/Users/KevinOsorioVelasquez/.conan2/p/libti32b41030ce347/p/lib" "C:/Users/KevinOsorioVelasquez/.conan2/p/libde712e34aa8080e/p/lib" "C:/Users/KevinOsorioVelasquez/.conan2/p/libjp65bf71d9e338c/p/lib" "C:/Users/KevinOsorioVelasquez/.conan2/p/jbigfe9119c355d4c/p/lib" "C:/Users/KevinOsorioVelasquez/.conan2/p/zstdd8883d62300dc/p/lib" "C:/Users/KevinOsorioVelasquez/.conan2/p/quirc4a07504dcabda/p/lib" "C:/Users/KevinOsorioVelasquez/.conan2/p/ffmpe179580fe493df/p/lib" "C:/Users/KevinOsorioVelasquez/.conan2/p/xz_ut80f3ba813098e/p/lib" "C:/Users/KevinOsorioVelasquez/.conan2/p/libicb4e788959979c/p/lib" "C:/Users/KevinOsorioVelasquez/.conan2/p/freet32e1b30696343/p/lib" "C:/Users/KevinOsorioVelasquez/.conan2/p/libpn214f4edd5a70e/p/lib" "C:/Users/KevinOsorioVelasquez/.conan2/p/bzip25d2dbaf142a52/p/lib" "C:/Users/KevinOsorioVelasquez/.conan2/p/brotl79757a5cae055/p/lib" "C:/Users/KevinOsorioVelasquez/.conan2/p/openj1ea00cdfeacf5/p/lib" "C:/Users/KevinOsorioVelasquez/.conan2/p/openh43a1841d17970/p/lib" "C:/Users/KevinOsorioVelasquez/.conan2/p/vorbib3b87ba3196b8/p/lib" "C:/Users/KevinOsorioVelasquez/.conan2/p/ogg0603e0d7ed2e4/p/lib" "C:/Users/KevinOsorioVelasquez/.conan2/p/opus8462564dcd469/p/lib" "C:/Users/KevinOsorioVelasquez/.conan2/p/libx2c168bac69eac9/p/lib" "C:/Users/KevinOsorioVelasquez/.conan2/p/libx25e9d5945e8ea8/p/lib" "C:/Users/KevinOsorioVelasquez/.conan2/p/libvpa2d818369d33b/p/lib" "C:/Users/KevinOsorioVelasquez/.conan2/p/libmpb8490c605ee04/p/lib" "C:/Users/KevinOsorioVelasquez/.conan2/p/libfd615fcaf5b2b15/p/lib" "C:/Users/KevinOsorioVelasquez/.conan2/p/libweb2503c6aa238e/p/lib" "C:/Users/KevinOsorioVelasquez/.conan2/p/opensc171ca1b6d196/p/lib" "C:/Users/KevinOsorioVelasquez/.conan2/p/zlib6f797a4dd16fb/p/lib" "C:/Users/KevinOsorioVelasquez/.conan2/p/libao5a109c175bbd2/p/lib" "C:/Users/KevinOsorioVelasquez/.conan2/p/dav1dc34c0e23007dd/p/lib")
list(PREPEND CMAKE_INCLUDE_PATH "C:/Users/KevinOsorioVelasquez/.conan2/p/aravi6bc74b4ecf707/p/include/aravis-0.8" "C:/Users/KevinOsorioVelasquez/.conan2/p/glib6c7afcf9a418b/p/include/gio-win32-2.0" "C:/Users/KevinOsorioVelasquez/.conan2/p/glib6c7afcf9a418b/p/include" "C:/Users/KevinOsorioVelasquez/.conan2/p/glib6c7afcf9a418b/p/include/glib-2.0" "C:/Users/KevinOsorioVelasquez/.conan2/p/glib6c7afcf9a418b/p/lib/glib-2.0/include" "C:/Users/KevinOsorioVelasquez/.conan2/p/libff4d41809ad9844/p/include" "C:/Users/KevinOsorioVelasquez/.conan2/p/pcre2931125a5a4a79/p/include" "C:/Users/KevinOsorioVelasquez/.conan2/p/libge00124390a106b/p/include" "C:/Users/KevinOsorioVelasquez/.conan2/p/libxmd32a97f0f5b98/p/include" "C:/Users/KevinOsorioVelasquez/.conan2/p/libxmd32a97f0f5b98/p/include/libxml2" "C:/Users/KevinOsorioVelasquez/.conan2/p/libus67d333fef7355/p/include" "C:/Users/KevinOsorioVelasquez/.conan2/p/libus67d333fef7355/p/include/libusb-1.0" "C:/Users/KevinOsorioVelasquez/.conan2/p/openc4a6e97b00f81d/p/include" "include" "C:/Users/KevinOsorioVelasquez/.conan2/p/proto8625022988b17/p/include" "C:/Users/KevinOsorioVelasquez/.conan2/p/ade12af7d213dfb7/p/include" "C:/Users/KevinOsorioVelasquez/.conan2/p/opene252a3319d0c51/p/include" "C:/Users/KevinOsorioVelasquez/.conan2/p/opene252a3319d0c51/p/include/OpenEXR" "C:/Users/KevinOsorioVelasquez/.conan2/p/imath80c97b7d55ab8/p/include" "C:/Users/KevinOsorioVelasquez/.conan2/p/imath80c97b7d55ab8/p/include/Imath" "C:/Users/KevinOsorioVelasquez/.conan2/p/libti32b41030ce347/p/include" "C:/Users/KevinOsorioVelasquez/.conan2/p/libde712e34aa8080e/p/include" "C:/Users/KevinOsorioVelasquez/.conan2/p/libjp65bf71d9e338c/p/include" "C:/Users/KevinOsorioVelasquez/.conan2/p/jbigfe9119c355d4c/p/include" "C:/Users/KevinOsorioVelasquez/.conan2/p/zstdd8883d62300dc/p/include" "C:/Users/KevinOsorioVelasquez/.conan2/p/quirc4a07504dcabda/p/include" "C:/Users/KevinOsorioVelasquez/.conan2/p/ffmpe179580fe493df/p/include" "C:/Users/KevinOsorioVelasquez/.conan2/p/xz_ut80f3ba813098e/p/include" "C:/Users/KevinOsorioVelasquez/.conan2/p/libicb4e788959979c/p/include" "C:/Users/KevinOsorioVelasquez/.conan2/p/freet32e1b30696343/p/include" "C:/Users/KevinOsorioVelasquez/.conan2/p/freet32e1b30696343/p/include/freetype2" "C:/Users/KevinOsorioVelasquez/.conan2/p/libpn214f4edd5a70e/p/include" "C:/Users/KevinOsorioVelasquez/.conan2/p/bzip25d2dbaf142a52/p/include" "C:/Users/KevinOsorioVelasquez/.conan2/p/brotl79757a5cae055/p/include" "C:/Users/KevinOsorioVelasquez/.conan2/p/brotl79757a5cae055/p/include/brotli" "C:/Users/KevinOsorioVelasquez/.conan2/p/openj1ea00cdfeacf5/p/include" "C:/Users/KevinOsorioVelasquez/.conan2/p/openj1ea00cdfeacf5/p/include/openjpeg-2.5" "C:/Users/KevinOsorioVelasquez/.conan2/p/openh43a1841d17970/p/include" "C:/Users/KevinOsorioVelasquez/.conan2/p/vorbib3b87ba3196b8/p/include" "C:/Users/KevinOsorioVelasquez/.conan2/p/ogg0603e0d7ed2e4/p/include" "C:/Users/KevinOsorioVelasquez/.conan2/p/opus8462564dcd469/p/include" "C:/Users/KevinOsorioVelasquez/.conan2/p/opus8462564dcd469/p/include/opus" "C:/Users/KevinOsorioVelasquez/.conan2/p/libx2c168bac69eac9/p/include" "C:/Users/KevinOsorioVelasquez/.conan2/p/libx25e9d5945e8ea8/p/include" "C:/Users/KevinOsorioVelasquez/.conan2/p/libvpa2d818369d33b/p/include" "C:/Users/KevinOsorioVelasquez/.conan2/p/libmpb8490c605ee04/p/include" "C:/Users/KevinOsorioVelasquez/.conan2/p/libfd615fcaf5b2b15/p/include" "C:/Users/KevinOsorioVelasquez/.conan2/p/libweb2503c6aa238e/p/include" "C:/Users/KevinOsorioVelasquez/.conan2/p/opensc171ca1b6d196/p/include" "C:/Users/KevinOsorioVelasquez/.conan2/p/zlib6f797a4dd16fb/p/include" "C:/Users/KevinOsorioVelasquez/.conan2/p/libao5a109c175bbd2/p/include" "C:/Users/KevinOsorioVelasquez/.conan2/p/dav1dc34c0e23007dd/p/include" "C:/Users/KevinOsorioVelasquez/.conan2/p/docte2fe58cbe17539/p/include")
set(CONAN_RUNTIME_LIB_DIRS "$<$<CONFIG:Release>:C:/Users/KevinOsorioVelasquez/.conan2/p/aravi6bc74b4ecf707/p/bin>" "$<$<CONFIG:Release>:C:/Users/KevinOsorioVelasquez/.conan2/p/glib6c7afcf9a418b/p/bin>" "$<$<CONFIG:Release>:C:/Users/KevinOsorioVelasquez/.conan2/p/libff4d41809ad9844/p/bin>" "$<$<CONFIG:Release>:C:/Users/KevinOsorioVelasquez/.conan2/p/pcre2931125a5a4a79/p/bin>" "$<$<CONFIG:Release>:C:/Users/KevinOsorioVelasquez/.conan2/p/libge00124390a106b/p/bin>" "$<$<CONFIG:Release>:C:/Users/KevinOsorioVelasquez/.conan2/p/libxmd32a97f0f5b98/p/bin>" "$<$<CONFIG:Release>:C:/Users/KevinOsorioVelasquez/.conan2/p/libus67d333fef7355/p/bin>" "$<$<CONFIG:Release>:C:/Users/KevinOsorioVelasquez/.conan2/p/openc4a6e97b00f81d/p/bin>" "$<$<CONFIG:Release>:bin>" "$<$<CONFIG:Release>:C:/Users/KevinOsorioVelasquez/.conan2/p/proto8625022988b17/p/bin>" "$<$<CONFIG:Release>:C:/Users/KevinOsorioVelasquez/.conan2/p/ade12af7d213dfb7/p/bin>" "$<$<CONFIG:Release>:C:/Users/KevinOsorioVelasquez/.conan2/p/opene252a3319d0c51/p/bin>" "$<$<CONFIG:Release>:C:/Users/KevinOsorioVelasquez/.conan2/p/imath80c97b7d55ab8/p/bin>" "$<$<CONFIG:Release>:C:/Users/KevinOsorioVelasquez/.conan2/p/libti32b41030ce347/p/bin>" "$<$<CONFIG:Release>:C:/Users/KevinOsorioVelasquez/.conan2/p/libde712e34aa8080e/p/bin>" "$<$<CONFIG:Release>:C:/Users/KevinOsorioVelasquez/.conan2/p/libjp65bf71d9e338c/p/bin>" "$<$<CONFIG:Release>:C:/Users/KevinOsorioVelasquez/.conan2/p/jbigfe9119c355d4c/p/bin>" "$<$<CONFIG:Release>:C:/Users/KevinOsorioVelasquez/.conan2/p/zstdd8883d62300dc/p/bin>" "$<$<CONFIG:Release>:C:/Users/KevinOsorioVelasquez/.conan2/p/quirc4a07504dcabda/p/bin>" "$<$<CONFIG:Release>:C:/Users/KevinOsorioVelasquez/.conan2/p/ffmpe179580fe493df/p/bin>" "$<$<CONFIG:Release>:C:/Users/KevinOsorioVelasquez/.conan2/p/xz_ut80f3ba813098e/p/bin>" "$<$<CONFIG:Release>:C:/Users/KevinOsorioVelasquez/.conan2/p/libicb4e788959979c/p/bin>" "$<$<CONFIG:Release>:C:/Users/KevinOsorioVelasquez/.conan2/p/freet32e1b30696343/p/bin>" "$<$<CONFIG:Release>:C:/Users/KevinOsorioVelasquez/.conan2/p/libpn214f4edd5a70e/p/bin>" "$<$<CONFIG:Release>:C:/Users/KevinOsorioVelasquez/.conan2/p/bzip25d2dbaf142a52/p/bin>" "$<$<CONFIG:Release>:C:/Users/KevinOsorioVelasquez/.conan2/p/brotl79757a5cae055/p/bin>" "$<$<CONFIG:Release>:C:/Users/KevinOsorioVelasquez/.conan2/p/openj1ea00cdfeacf5/p/bin>" "$<$<CONFIG:Release>:C:/Users/KevinOsorioVelasquez/.conan2/p/openh43a1841d17970/p/bin>" "$<$<CONFIG:Release>:C:/Users/KevinOsorioVelasquez/.conan2/p/vorbib3b87ba3196b8/p/bin>" "$<$<CONFIG:Release>:C:/Users/KevinOsorioVelasquez/.conan2/p/ogg0603e0d7ed2e4/p/bin>" "$<$<CONFIG:Release>:C:/Users/KevinOsorioVelasquez/.conan2/p/opus8462564dcd469/p/bin>" "$<$<CONFIG:Release>:C:/Users/KevinOsorioVelasquez/.conan2/p/libx2c168bac69eac9/p/bin>" "$<$<CONFIG:Release>:C:/Users/KevinOsorioVelasquez/.conan2/p/libx25e9d5945e8ea8/p/bin>" "$<$<CONFIG:Release>:C:/Users/KevinOsorioVelasquez/.conan2/p/libvpa2d818369d33b/p/bin>" "$<$<CONFIG:Release>:C:/Users/KevinOsorioVelasquez/.conan2/p/libmpb8490c605ee04/p/bin>" "$<$<CONFIG:Release>:C:/Users/KevinOsorioVelasquez/.conan2/p/libfd615fcaf5b2b15/p/bin>" "$<$<CONFIG:Release>:C:/Users/KevinOsorioVelasquez/.conan2/p/libweb2503c6aa238e/p/bin>" "$<$<CONFIG:Release>:C:/Users/KevinOsorioVelasquez/.conan2/p/opensc171ca1b6d196/p/bin>" "$<$<CONFIG:Release>:C:/Users/KevinOsorioVelasquez/.conan2/p/zlib6f797a4dd16fb/p/bin>" "$<$<CONFIG:Release>:C:/Users/KevinOsorioVelasquez/.conan2/p/libao5a109c175bbd2/p/bin>" "$<$<CONFIG:Release>:C:/Users/KevinOsorioVelasquez/.conan2/p/dav1dc34c0e23007dd/p/bin>" )



########## 'pkg_config' block #############
# Define pkg-config from 'tools.gnu:pkg_config' executable and paths

if (DEFINED ENV{PKG_CONFIG_PATH})
set(ENV{PKG_CONFIG_PATH} "${CMAKE_CURRENT_LIST_DIR};$ENV{PKG_CONFIG_PATH}")
else()
set(ENV{PKG_CONFIG_PATH} "${CMAKE_CURRENT_LIST_DIR};")
endif()


########## 'rpath' block #############
# Defining CMAKE_SKIP_RPATH



########## 'output_dirs' block #############
# Definition of CMAKE_INSTALL_XXX folders

set(CMAKE_INSTALL_BINDIR "bin")
set(CMAKE_INSTALL_SBINDIR "bin")
set(CMAKE_INSTALL_LIBEXECDIR "bin")
set(CMAKE_INSTALL_LIBDIR "lib")
set(CMAKE_INSTALL_INCLUDEDIR "include")
set(CMAKE_INSTALL_OLDINCLUDEDIR "include")


########## 'variables' block #############
# Definition of CMake variables from CMakeToolchain.variables values

# Variables
# Variables  per configuration



########## 'preprocessor' block #############
# Preprocessor definitions from CMakeToolchain.preprocessor_definitions values

# Preprocessor definitions per configuration



if(CMAKE_POLICY_DEFAULT_CMP0091)  # Avoid unused and not-initialized warnings
endif()
