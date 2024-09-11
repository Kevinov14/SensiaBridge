########### AGGREGATED COMPONENTS AND DEPENDENCIES FOR THE MULTI CONFIG #####################
#############################################################################################

list(APPEND glib_COMPONENT_NAMES glib::glib-2.0 glib::gresource glib::gmodule-no-export-2.0 glib::gobject-2.0 glib::gthread-2.0 glib::gmodule-export-2.0 glib::gmodule-2.0 glib::gio-2.0 glib::gio-windows-2.0)
list(REMOVE_DUPLICATES glib_COMPONENT_NAMES)
if(DEFINED glib_FIND_DEPENDENCY_NAMES)
  list(APPEND glib_FIND_DEPENDENCY_NAMES libffi PCRE2 Intl ZLIB)
  list(REMOVE_DUPLICATES glib_FIND_DEPENDENCY_NAMES)
else()
  set(glib_FIND_DEPENDENCY_NAMES libffi PCRE2 Intl ZLIB)
endif()
set(libffi_FIND_MODE "NO_MODULE")
set(PCRE2_FIND_MODE "NO_MODULE")
set(Intl_FIND_MODE "NO_MODULE")
set(ZLIB_FIND_MODE "NO_MODULE")

########### VARIABLES #######################################################################
#############################################################################################
set(glib_PACKAGE_FOLDER_RELEASE "C:/Users/KevinOsorioVelasquez/.conan2/p/glib6c7afcf9a418b/p")
set(glib_BUILD_MODULES_PATHS_RELEASE )


set(glib_INCLUDE_DIRS_RELEASE "${glib_PACKAGE_FOLDER_RELEASE}/include/gio-win32-2.0"
			"${glib_PACKAGE_FOLDER_RELEASE}/include"
			"${glib_PACKAGE_FOLDER_RELEASE}/include/glib-2.0"
			"${glib_PACKAGE_FOLDER_RELEASE}/lib/glib-2.0/include")
set(glib_RES_DIRS_RELEASE "${glib_PACKAGE_FOLDER_RELEASE}/res")
set(glib_DEFINITIONS_RELEASE )
set(glib_SHARED_LINK_FLAGS_RELEASE )
set(glib_EXE_LINK_FLAGS_RELEASE )
set(glib_OBJECTS_RELEASE )
set(glib_COMPILE_DEFINITIONS_RELEASE )
set(glib_COMPILE_OPTIONS_C_RELEASE )
set(glib_COMPILE_OPTIONS_CXX_RELEASE )
set(glib_LIB_DIRS_RELEASE "${glib_PACKAGE_FOLDER_RELEASE}/lib")
set(glib_BIN_DIRS_RELEASE )
set(glib_LIBRARY_TYPE_RELEASE STATIC)
set(glib_IS_HOST_WINDOWS_RELEASE 1)
set(glib_LIBS_RELEASE gio-2.0 gthread-2.0 gobject-2.0 gmodule-2.0 glib-2.0)
set(glib_SYSTEM_LIBS_RELEASE iphlpapi dnsapi shlwapi ws2_32 ole32 shell32 user32 advapi32)
set(glib_FRAMEWORK_DIRS_RELEASE )
set(glib_FRAMEWORKS_RELEASE )
set(glib_BUILD_DIRS_RELEASE )
set(glib_NO_SONAME_MODE_RELEASE FALSE)


# COMPOUND VARIABLES
set(glib_COMPILE_OPTIONS_RELEASE
    "$<$<COMPILE_LANGUAGE:CXX>:${glib_COMPILE_OPTIONS_CXX_RELEASE}>"
    "$<$<COMPILE_LANGUAGE:C>:${glib_COMPILE_OPTIONS_C_RELEASE}>")
set(glib_LINKER_FLAGS_RELEASE
    "$<$<STREQUAL:$<TARGET_PROPERTY:TYPE>,SHARED_LIBRARY>:${glib_SHARED_LINK_FLAGS_RELEASE}>"
    "$<$<STREQUAL:$<TARGET_PROPERTY:TYPE>,MODULE_LIBRARY>:${glib_SHARED_LINK_FLAGS_RELEASE}>"
    "$<$<STREQUAL:$<TARGET_PROPERTY:TYPE>,EXECUTABLE>:${glib_EXE_LINK_FLAGS_RELEASE}>")


set(glib_COMPONENTS_RELEASE glib::glib-2.0 glib::gresource glib::gmodule-no-export-2.0 glib::gobject-2.0 glib::gthread-2.0 glib::gmodule-export-2.0 glib::gmodule-2.0 glib::gio-2.0 glib::gio-windows-2.0)
########### COMPONENT glib::gio-windows-2.0 VARIABLES ############################################

set(glib_glib_gio-windows-2.0_INCLUDE_DIRS_RELEASE "${glib_PACKAGE_FOLDER_RELEASE}/include/gio-win32-2.0")
set(glib_glib_gio-windows-2.0_LIB_DIRS_RELEASE "${glib_PACKAGE_FOLDER_RELEASE}/lib")
set(glib_glib_gio-windows-2.0_BIN_DIRS_RELEASE )
set(glib_glib_gio-windows-2.0_LIBRARY_TYPE_RELEASE STATIC)
set(glib_glib_gio-windows-2.0_IS_HOST_WINDOWS_RELEASE 1)
set(glib_glib_gio-windows-2.0_RES_DIRS_RELEASE )
set(glib_glib_gio-windows-2.0_DEFINITIONS_RELEASE )
set(glib_glib_gio-windows-2.0_OBJECTS_RELEASE )
set(glib_glib_gio-windows-2.0_COMPILE_DEFINITIONS_RELEASE )
set(glib_glib_gio-windows-2.0_COMPILE_OPTIONS_C_RELEASE "")
set(glib_glib_gio-windows-2.0_COMPILE_OPTIONS_CXX_RELEASE "")
set(glib_glib_gio-windows-2.0_LIBS_RELEASE )
set(glib_glib_gio-windows-2.0_SYSTEM_LIBS_RELEASE )
set(glib_glib_gio-windows-2.0_FRAMEWORK_DIRS_RELEASE )
set(glib_glib_gio-windows-2.0_FRAMEWORKS_RELEASE )
set(glib_glib_gio-windows-2.0_DEPENDENCIES_RELEASE glib::gobject-2.0 glib::gmodule-no-export-2.0 glib::gio-2.0)
set(glib_glib_gio-windows-2.0_SHARED_LINK_FLAGS_RELEASE )
set(glib_glib_gio-windows-2.0_EXE_LINK_FLAGS_RELEASE )
set(glib_glib_gio-windows-2.0_NO_SONAME_MODE_RELEASE FALSE)

# COMPOUND VARIABLES
set(glib_glib_gio-windows-2.0_LINKER_FLAGS_RELEASE
        $<$<STREQUAL:$<TARGET_PROPERTY:TYPE>,SHARED_LIBRARY>:${glib_glib_gio-windows-2.0_SHARED_LINK_FLAGS_RELEASE}>
        $<$<STREQUAL:$<TARGET_PROPERTY:TYPE>,MODULE_LIBRARY>:${glib_glib_gio-windows-2.0_SHARED_LINK_FLAGS_RELEASE}>
        $<$<STREQUAL:$<TARGET_PROPERTY:TYPE>,EXECUTABLE>:${glib_glib_gio-windows-2.0_EXE_LINK_FLAGS_RELEASE}>
)
set(glib_glib_gio-windows-2.0_COMPILE_OPTIONS_RELEASE
    "$<$<COMPILE_LANGUAGE:CXX>:${glib_glib_gio-windows-2.0_COMPILE_OPTIONS_CXX_RELEASE}>"
    "$<$<COMPILE_LANGUAGE:C>:${glib_glib_gio-windows-2.0_COMPILE_OPTIONS_C_RELEASE}>")
########### COMPONENT glib::gio-2.0 VARIABLES ############################################

set(glib_glib_gio-2.0_INCLUDE_DIRS_RELEASE "${glib_PACKAGE_FOLDER_RELEASE}/include")
set(glib_glib_gio-2.0_LIB_DIRS_RELEASE "${glib_PACKAGE_FOLDER_RELEASE}/lib")
set(glib_glib_gio-2.0_BIN_DIRS_RELEASE )
set(glib_glib_gio-2.0_LIBRARY_TYPE_RELEASE STATIC)
set(glib_glib_gio-2.0_IS_HOST_WINDOWS_RELEASE 1)
set(glib_glib_gio-2.0_RES_DIRS_RELEASE "${glib_PACKAGE_FOLDER_RELEASE}/res")
set(glib_glib_gio-2.0_DEFINITIONS_RELEASE )
set(glib_glib_gio-2.0_OBJECTS_RELEASE )
set(glib_glib_gio-2.0_COMPILE_DEFINITIONS_RELEASE )
set(glib_glib_gio-2.0_COMPILE_OPTIONS_C_RELEASE "")
set(glib_glib_gio-2.0_COMPILE_OPTIONS_CXX_RELEASE "")
set(glib_glib_gio-2.0_LIBS_RELEASE gio-2.0)
set(glib_glib_gio-2.0_SYSTEM_LIBS_RELEASE iphlpapi dnsapi shlwapi)
set(glib_glib_gio-2.0_FRAMEWORK_DIRS_RELEASE )
set(glib_glib_gio-2.0_FRAMEWORKS_RELEASE )
set(glib_glib_gio-2.0_DEPENDENCIES_RELEASE glib::glib-2.0 glib::gobject-2.0 glib::gmodule-2.0 ZLIB::ZLIB)
set(glib_glib_gio-2.0_SHARED_LINK_FLAGS_RELEASE )
set(glib_glib_gio-2.0_EXE_LINK_FLAGS_RELEASE )
set(glib_glib_gio-2.0_NO_SONAME_MODE_RELEASE FALSE)

# COMPOUND VARIABLES
set(glib_glib_gio-2.0_LINKER_FLAGS_RELEASE
        $<$<STREQUAL:$<TARGET_PROPERTY:TYPE>,SHARED_LIBRARY>:${glib_glib_gio-2.0_SHARED_LINK_FLAGS_RELEASE}>
        $<$<STREQUAL:$<TARGET_PROPERTY:TYPE>,MODULE_LIBRARY>:${glib_glib_gio-2.0_SHARED_LINK_FLAGS_RELEASE}>
        $<$<STREQUAL:$<TARGET_PROPERTY:TYPE>,EXECUTABLE>:${glib_glib_gio-2.0_EXE_LINK_FLAGS_RELEASE}>
)
set(glib_glib_gio-2.0_COMPILE_OPTIONS_RELEASE
    "$<$<COMPILE_LANGUAGE:CXX>:${glib_glib_gio-2.0_COMPILE_OPTIONS_CXX_RELEASE}>"
    "$<$<COMPILE_LANGUAGE:C>:${glib_glib_gio-2.0_COMPILE_OPTIONS_C_RELEASE}>")
########### COMPONENT glib::gmodule-2.0 VARIABLES ############################################

set(glib_glib_gmodule-2.0_INCLUDE_DIRS_RELEASE "${glib_PACKAGE_FOLDER_RELEASE}/include")
set(glib_glib_gmodule-2.0_LIB_DIRS_RELEASE "${glib_PACKAGE_FOLDER_RELEASE}/lib")
set(glib_glib_gmodule-2.0_BIN_DIRS_RELEASE )
set(glib_glib_gmodule-2.0_LIBRARY_TYPE_RELEASE STATIC)
set(glib_glib_gmodule-2.0_IS_HOST_WINDOWS_RELEASE 1)
set(glib_glib_gmodule-2.0_RES_DIRS_RELEASE )
set(glib_glib_gmodule-2.0_DEFINITIONS_RELEASE )
set(glib_glib_gmodule-2.0_OBJECTS_RELEASE )
set(glib_glib_gmodule-2.0_COMPILE_DEFINITIONS_RELEASE )
set(glib_glib_gmodule-2.0_COMPILE_OPTIONS_C_RELEASE "")
set(glib_glib_gmodule-2.0_COMPILE_OPTIONS_CXX_RELEASE "")
set(glib_glib_gmodule-2.0_LIBS_RELEASE )
set(glib_glib_gmodule-2.0_SYSTEM_LIBS_RELEASE )
set(glib_glib_gmodule-2.0_FRAMEWORK_DIRS_RELEASE )
set(glib_glib_gmodule-2.0_FRAMEWORKS_RELEASE )
set(glib_glib_gmodule-2.0_DEPENDENCIES_RELEASE glib::gmodule-no-export-2.0 glib::glib-2.0)
set(glib_glib_gmodule-2.0_SHARED_LINK_FLAGS_RELEASE )
set(glib_glib_gmodule-2.0_EXE_LINK_FLAGS_RELEASE )
set(glib_glib_gmodule-2.0_NO_SONAME_MODE_RELEASE FALSE)

# COMPOUND VARIABLES
set(glib_glib_gmodule-2.0_LINKER_FLAGS_RELEASE
        $<$<STREQUAL:$<TARGET_PROPERTY:TYPE>,SHARED_LIBRARY>:${glib_glib_gmodule-2.0_SHARED_LINK_FLAGS_RELEASE}>
        $<$<STREQUAL:$<TARGET_PROPERTY:TYPE>,MODULE_LIBRARY>:${glib_glib_gmodule-2.0_SHARED_LINK_FLAGS_RELEASE}>
        $<$<STREQUAL:$<TARGET_PROPERTY:TYPE>,EXECUTABLE>:${glib_glib_gmodule-2.0_EXE_LINK_FLAGS_RELEASE}>
)
set(glib_glib_gmodule-2.0_COMPILE_OPTIONS_RELEASE
    "$<$<COMPILE_LANGUAGE:CXX>:${glib_glib_gmodule-2.0_COMPILE_OPTIONS_CXX_RELEASE}>"
    "$<$<COMPILE_LANGUAGE:C>:${glib_glib_gmodule-2.0_COMPILE_OPTIONS_C_RELEASE}>")
########### COMPONENT glib::gmodule-export-2.0 VARIABLES ############################################

set(glib_glib_gmodule-export-2.0_INCLUDE_DIRS_RELEASE "${glib_PACKAGE_FOLDER_RELEASE}/include")
set(glib_glib_gmodule-export-2.0_LIB_DIRS_RELEASE "${glib_PACKAGE_FOLDER_RELEASE}/lib")
set(glib_glib_gmodule-export-2.0_BIN_DIRS_RELEASE )
set(glib_glib_gmodule-export-2.0_LIBRARY_TYPE_RELEASE STATIC)
set(glib_glib_gmodule-export-2.0_IS_HOST_WINDOWS_RELEASE 1)
set(glib_glib_gmodule-export-2.0_RES_DIRS_RELEASE )
set(glib_glib_gmodule-export-2.0_DEFINITIONS_RELEASE )
set(glib_glib_gmodule-export-2.0_OBJECTS_RELEASE )
set(glib_glib_gmodule-export-2.0_COMPILE_DEFINITIONS_RELEASE )
set(glib_glib_gmodule-export-2.0_COMPILE_OPTIONS_C_RELEASE "")
set(glib_glib_gmodule-export-2.0_COMPILE_OPTIONS_CXX_RELEASE "")
set(glib_glib_gmodule-export-2.0_LIBS_RELEASE )
set(glib_glib_gmodule-export-2.0_SYSTEM_LIBS_RELEASE )
set(glib_glib_gmodule-export-2.0_FRAMEWORK_DIRS_RELEASE )
set(glib_glib_gmodule-export-2.0_FRAMEWORKS_RELEASE )
set(glib_glib_gmodule-export-2.0_DEPENDENCIES_RELEASE glib::gmodule-no-export-2.0 glib::glib-2.0)
set(glib_glib_gmodule-export-2.0_SHARED_LINK_FLAGS_RELEASE )
set(glib_glib_gmodule-export-2.0_EXE_LINK_FLAGS_RELEASE )
set(glib_glib_gmodule-export-2.0_NO_SONAME_MODE_RELEASE FALSE)

# COMPOUND VARIABLES
set(glib_glib_gmodule-export-2.0_LINKER_FLAGS_RELEASE
        $<$<STREQUAL:$<TARGET_PROPERTY:TYPE>,SHARED_LIBRARY>:${glib_glib_gmodule-export-2.0_SHARED_LINK_FLAGS_RELEASE}>
        $<$<STREQUAL:$<TARGET_PROPERTY:TYPE>,MODULE_LIBRARY>:${glib_glib_gmodule-export-2.0_SHARED_LINK_FLAGS_RELEASE}>
        $<$<STREQUAL:$<TARGET_PROPERTY:TYPE>,EXECUTABLE>:${glib_glib_gmodule-export-2.0_EXE_LINK_FLAGS_RELEASE}>
)
set(glib_glib_gmodule-export-2.0_COMPILE_OPTIONS_RELEASE
    "$<$<COMPILE_LANGUAGE:CXX>:${glib_glib_gmodule-export-2.0_COMPILE_OPTIONS_CXX_RELEASE}>"
    "$<$<COMPILE_LANGUAGE:C>:${glib_glib_gmodule-export-2.0_COMPILE_OPTIONS_C_RELEASE}>")
########### COMPONENT glib::gthread-2.0 VARIABLES ############################################

set(glib_glib_gthread-2.0_INCLUDE_DIRS_RELEASE "${glib_PACKAGE_FOLDER_RELEASE}/include")
set(glib_glib_gthread-2.0_LIB_DIRS_RELEASE "${glib_PACKAGE_FOLDER_RELEASE}/lib")
set(glib_glib_gthread-2.0_BIN_DIRS_RELEASE )
set(glib_glib_gthread-2.0_LIBRARY_TYPE_RELEASE STATIC)
set(glib_glib_gthread-2.0_IS_HOST_WINDOWS_RELEASE 1)
set(glib_glib_gthread-2.0_RES_DIRS_RELEASE "${glib_PACKAGE_FOLDER_RELEASE}/res")
set(glib_glib_gthread-2.0_DEFINITIONS_RELEASE )
set(glib_glib_gthread-2.0_OBJECTS_RELEASE )
set(glib_glib_gthread-2.0_COMPILE_DEFINITIONS_RELEASE )
set(glib_glib_gthread-2.0_COMPILE_OPTIONS_C_RELEASE "")
set(glib_glib_gthread-2.0_COMPILE_OPTIONS_CXX_RELEASE "")
set(glib_glib_gthread-2.0_LIBS_RELEASE gthread-2.0)
set(glib_glib_gthread-2.0_SYSTEM_LIBS_RELEASE )
set(glib_glib_gthread-2.0_FRAMEWORK_DIRS_RELEASE )
set(glib_glib_gthread-2.0_FRAMEWORKS_RELEASE )
set(glib_glib_gthread-2.0_DEPENDENCIES_RELEASE glib::glib-2.0)
set(glib_glib_gthread-2.0_SHARED_LINK_FLAGS_RELEASE )
set(glib_glib_gthread-2.0_EXE_LINK_FLAGS_RELEASE )
set(glib_glib_gthread-2.0_NO_SONAME_MODE_RELEASE FALSE)

# COMPOUND VARIABLES
set(glib_glib_gthread-2.0_LINKER_FLAGS_RELEASE
        $<$<STREQUAL:$<TARGET_PROPERTY:TYPE>,SHARED_LIBRARY>:${glib_glib_gthread-2.0_SHARED_LINK_FLAGS_RELEASE}>
        $<$<STREQUAL:$<TARGET_PROPERTY:TYPE>,MODULE_LIBRARY>:${glib_glib_gthread-2.0_SHARED_LINK_FLAGS_RELEASE}>
        $<$<STREQUAL:$<TARGET_PROPERTY:TYPE>,EXECUTABLE>:${glib_glib_gthread-2.0_EXE_LINK_FLAGS_RELEASE}>
)
set(glib_glib_gthread-2.0_COMPILE_OPTIONS_RELEASE
    "$<$<COMPILE_LANGUAGE:CXX>:${glib_glib_gthread-2.0_COMPILE_OPTIONS_CXX_RELEASE}>"
    "$<$<COMPILE_LANGUAGE:C>:${glib_glib_gthread-2.0_COMPILE_OPTIONS_C_RELEASE}>")
########### COMPONENT glib::gobject-2.0 VARIABLES ############################################

set(glib_glib_gobject-2.0_INCLUDE_DIRS_RELEASE "${glib_PACKAGE_FOLDER_RELEASE}/include")
set(glib_glib_gobject-2.0_LIB_DIRS_RELEASE "${glib_PACKAGE_FOLDER_RELEASE}/lib")
set(glib_glib_gobject-2.0_BIN_DIRS_RELEASE )
set(glib_glib_gobject-2.0_LIBRARY_TYPE_RELEASE STATIC)
set(glib_glib_gobject-2.0_IS_HOST_WINDOWS_RELEASE 1)
set(glib_glib_gobject-2.0_RES_DIRS_RELEASE "${glib_PACKAGE_FOLDER_RELEASE}/res")
set(glib_glib_gobject-2.0_DEFINITIONS_RELEASE )
set(glib_glib_gobject-2.0_OBJECTS_RELEASE )
set(glib_glib_gobject-2.0_COMPILE_DEFINITIONS_RELEASE )
set(glib_glib_gobject-2.0_COMPILE_OPTIONS_C_RELEASE "")
set(glib_glib_gobject-2.0_COMPILE_OPTIONS_CXX_RELEASE "")
set(glib_glib_gobject-2.0_LIBS_RELEASE gobject-2.0)
set(glib_glib_gobject-2.0_SYSTEM_LIBS_RELEASE )
set(glib_glib_gobject-2.0_FRAMEWORK_DIRS_RELEASE )
set(glib_glib_gobject-2.0_FRAMEWORKS_RELEASE )
set(glib_glib_gobject-2.0_DEPENDENCIES_RELEASE glib::glib-2.0 libffi::libffi)
set(glib_glib_gobject-2.0_SHARED_LINK_FLAGS_RELEASE )
set(glib_glib_gobject-2.0_EXE_LINK_FLAGS_RELEASE )
set(glib_glib_gobject-2.0_NO_SONAME_MODE_RELEASE FALSE)

# COMPOUND VARIABLES
set(glib_glib_gobject-2.0_LINKER_FLAGS_RELEASE
        $<$<STREQUAL:$<TARGET_PROPERTY:TYPE>,SHARED_LIBRARY>:${glib_glib_gobject-2.0_SHARED_LINK_FLAGS_RELEASE}>
        $<$<STREQUAL:$<TARGET_PROPERTY:TYPE>,MODULE_LIBRARY>:${glib_glib_gobject-2.0_SHARED_LINK_FLAGS_RELEASE}>
        $<$<STREQUAL:$<TARGET_PROPERTY:TYPE>,EXECUTABLE>:${glib_glib_gobject-2.0_EXE_LINK_FLAGS_RELEASE}>
)
set(glib_glib_gobject-2.0_COMPILE_OPTIONS_RELEASE
    "$<$<COMPILE_LANGUAGE:CXX>:${glib_glib_gobject-2.0_COMPILE_OPTIONS_CXX_RELEASE}>"
    "$<$<COMPILE_LANGUAGE:C>:${glib_glib_gobject-2.0_COMPILE_OPTIONS_C_RELEASE}>")
########### COMPONENT glib::gmodule-no-export-2.0 VARIABLES ############################################

set(glib_glib_gmodule-no-export-2.0_INCLUDE_DIRS_RELEASE "${glib_PACKAGE_FOLDER_RELEASE}/include")
set(glib_glib_gmodule-no-export-2.0_LIB_DIRS_RELEASE "${glib_PACKAGE_FOLDER_RELEASE}/lib")
set(glib_glib_gmodule-no-export-2.0_BIN_DIRS_RELEASE )
set(glib_glib_gmodule-no-export-2.0_LIBRARY_TYPE_RELEASE STATIC)
set(glib_glib_gmodule-no-export-2.0_IS_HOST_WINDOWS_RELEASE 1)
set(glib_glib_gmodule-no-export-2.0_RES_DIRS_RELEASE "${glib_PACKAGE_FOLDER_RELEASE}/res")
set(glib_glib_gmodule-no-export-2.0_DEFINITIONS_RELEASE )
set(glib_glib_gmodule-no-export-2.0_OBJECTS_RELEASE )
set(glib_glib_gmodule-no-export-2.0_COMPILE_DEFINITIONS_RELEASE )
set(glib_glib_gmodule-no-export-2.0_COMPILE_OPTIONS_C_RELEASE "")
set(glib_glib_gmodule-no-export-2.0_COMPILE_OPTIONS_CXX_RELEASE "")
set(glib_glib_gmodule-no-export-2.0_LIBS_RELEASE gmodule-2.0)
set(glib_glib_gmodule-no-export-2.0_SYSTEM_LIBS_RELEASE )
set(glib_glib_gmodule-no-export-2.0_FRAMEWORK_DIRS_RELEASE )
set(glib_glib_gmodule-no-export-2.0_FRAMEWORKS_RELEASE )
set(glib_glib_gmodule-no-export-2.0_DEPENDENCIES_RELEASE glib::glib-2.0)
set(glib_glib_gmodule-no-export-2.0_SHARED_LINK_FLAGS_RELEASE )
set(glib_glib_gmodule-no-export-2.0_EXE_LINK_FLAGS_RELEASE )
set(glib_glib_gmodule-no-export-2.0_NO_SONAME_MODE_RELEASE FALSE)

# COMPOUND VARIABLES
set(glib_glib_gmodule-no-export-2.0_LINKER_FLAGS_RELEASE
        $<$<STREQUAL:$<TARGET_PROPERTY:TYPE>,SHARED_LIBRARY>:${glib_glib_gmodule-no-export-2.0_SHARED_LINK_FLAGS_RELEASE}>
        $<$<STREQUAL:$<TARGET_PROPERTY:TYPE>,MODULE_LIBRARY>:${glib_glib_gmodule-no-export-2.0_SHARED_LINK_FLAGS_RELEASE}>
        $<$<STREQUAL:$<TARGET_PROPERTY:TYPE>,EXECUTABLE>:${glib_glib_gmodule-no-export-2.0_EXE_LINK_FLAGS_RELEASE}>
)
set(glib_glib_gmodule-no-export-2.0_COMPILE_OPTIONS_RELEASE
    "$<$<COMPILE_LANGUAGE:CXX>:${glib_glib_gmodule-no-export-2.0_COMPILE_OPTIONS_CXX_RELEASE}>"
    "$<$<COMPILE_LANGUAGE:C>:${glib_glib_gmodule-no-export-2.0_COMPILE_OPTIONS_C_RELEASE}>")
########### COMPONENT glib::gresource VARIABLES ############################################

set(glib_glib_gresource_INCLUDE_DIRS_RELEASE "${glib_PACKAGE_FOLDER_RELEASE}/include")
set(glib_glib_gresource_LIB_DIRS_RELEASE "${glib_PACKAGE_FOLDER_RELEASE}/lib")
set(glib_glib_gresource_BIN_DIRS_RELEASE )
set(glib_glib_gresource_LIBRARY_TYPE_RELEASE STATIC)
set(glib_glib_gresource_IS_HOST_WINDOWS_RELEASE 1)
set(glib_glib_gresource_RES_DIRS_RELEASE )
set(glib_glib_gresource_DEFINITIONS_RELEASE )
set(glib_glib_gresource_OBJECTS_RELEASE )
set(glib_glib_gresource_COMPILE_DEFINITIONS_RELEASE )
set(glib_glib_gresource_COMPILE_OPTIONS_C_RELEASE "")
set(glib_glib_gresource_COMPILE_OPTIONS_CXX_RELEASE "")
set(glib_glib_gresource_LIBS_RELEASE )
set(glib_glib_gresource_SYSTEM_LIBS_RELEASE )
set(glib_glib_gresource_FRAMEWORK_DIRS_RELEASE )
set(glib_glib_gresource_FRAMEWORKS_RELEASE )
set(glib_glib_gresource_DEPENDENCIES_RELEASE )
set(glib_glib_gresource_SHARED_LINK_FLAGS_RELEASE )
set(glib_glib_gresource_EXE_LINK_FLAGS_RELEASE )
set(glib_glib_gresource_NO_SONAME_MODE_RELEASE FALSE)

# COMPOUND VARIABLES
set(glib_glib_gresource_LINKER_FLAGS_RELEASE
        $<$<STREQUAL:$<TARGET_PROPERTY:TYPE>,SHARED_LIBRARY>:${glib_glib_gresource_SHARED_LINK_FLAGS_RELEASE}>
        $<$<STREQUAL:$<TARGET_PROPERTY:TYPE>,MODULE_LIBRARY>:${glib_glib_gresource_SHARED_LINK_FLAGS_RELEASE}>
        $<$<STREQUAL:$<TARGET_PROPERTY:TYPE>,EXECUTABLE>:${glib_glib_gresource_EXE_LINK_FLAGS_RELEASE}>
)
set(glib_glib_gresource_COMPILE_OPTIONS_RELEASE
    "$<$<COMPILE_LANGUAGE:CXX>:${glib_glib_gresource_COMPILE_OPTIONS_CXX_RELEASE}>"
    "$<$<COMPILE_LANGUAGE:C>:${glib_glib_gresource_COMPILE_OPTIONS_C_RELEASE}>")
########### COMPONENT glib::glib-2.0 VARIABLES ############################################

set(glib_glib_glib-2.0_INCLUDE_DIRS_RELEASE "${glib_PACKAGE_FOLDER_RELEASE}/include"
			"${glib_PACKAGE_FOLDER_RELEASE}/include/glib-2.0"
			"${glib_PACKAGE_FOLDER_RELEASE}/lib/glib-2.0/include")
set(glib_glib_glib-2.0_LIB_DIRS_RELEASE "${glib_PACKAGE_FOLDER_RELEASE}/lib")
set(glib_glib_glib-2.0_BIN_DIRS_RELEASE )
set(glib_glib_glib-2.0_LIBRARY_TYPE_RELEASE STATIC)
set(glib_glib_glib-2.0_IS_HOST_WINDOWS_RELEASE 1)
set(glib_glib_glib-2.0_RES_DIRS_RELEASE "${glib_PACKAGE_FOLDER_RELEASE}/res")
set(glib_glib_glib-2.0_DEFINITIONS_RELEASE )
set(glib_glib_glib-2.0_OBJECTS_RELEASE )
set(glib_glib_glib-2.0_COMPILE_DEFINITIONS_RELEASE )
set(glib_glib_glib-2.0_COMPILE_OPTIONS_C_RELEASE "")
set(glib_glib_glib-2.0_COMPILE_OPTIONS_CXX_RELEASE "")
set(glib_glib_glib-2.0_LIBS_RELEASE glib-2.0)
set(glib_glib_glib-2.0_SYSTEM_LIBS_RELEASE ws2_32 ole32 shell32 user32 advapi32)
set(glib_glib_glib-2.0_FRAMEWORK_DIRS_RELEASE )
set(glib_glib_glib-2.0_FRAMEWORKS_RELEASE )
set(glib_glib_glib-2.0_DEPENDENCIES_RELEASE pcre2::pcre2 Intl::Intl)
set(glib_glib_glib-2.0_SHARED_LINK_FLAGS_RELEASE )
set(glib_glib_glib-2.0_EXE_LINK_FLAGS_RELEASE )
set(glib_glib_glib-2.0_NO_SONAME_MODE_RELEASE FALSE)

# COMPOUND VARIABLES
set(glib_glib_glib-2.0_LINKER_FLAGS_RELEASE
        $<$<STREQUAL:$<TARGET_PROPERTY:TYPE>,SHARED_LIBRARY>:${glib_glib_glib-2.0_SHARED_LINK_FLAGS_RELEASE}>
        $<$<STREQUAL:$<TARGET_PROPERTY:TYPE>,MODULE_LIBRARY>:${glib_glib_glib-2.0_SHARED_LINK_FLAGS_RELEASE}>
        $<$<STREQUAL:$<TARGET_PROPERTY:TYPE>,EXECUTABLE>:${glib_glib_glib-2.0_EXE_LINK_FLAGS_RELEASE}>
)
set(glib_glib_glib-2.0_COMPILE_OPTIONS_RELEASE
    "$<$<COMPILE_LANGUAGE:CXX>:${glib_glib_glib-2.0_COMPILE_OPTIONS_CXX_RELEASE}>"
    "$<$<COMPILE_LANGUAGE:C>:${glib_glib_glib-2.0_COMPILE_OPTIONS_C_RELEASE}>")