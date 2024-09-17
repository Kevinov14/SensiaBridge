cmake_minimum_required(VERSION 3.10)

cmake_policy(SET CMP0091 NEW)
message(STATUS "Policy CMP0091 set NEW")
if(EXISTS "${CMAKE_BINARY_DIR}/generators/conan_toolchain.cmake")
    include("${CMAKE_BINARY_DIR}/generators/conan_toolchain.cmake")
endif()


project(proyectoSensiaBridge)
project(videotest)
project(test)
project(feature)
project(node)

# Habilitar C++17
set(CMAKE_CXX_STANDARD 17)
set(CMAKE_CXX_STANDARD_REQUIRED True)

# Configurar Doxygen
option(BUILD_DOC "Build documentation" ON)
find_package(Doxygen)

# Buscar Doxygen en el sistema
find_program(DOXYGEN_EXECUTABLE doxygen)

if(NOT DOXYGEN_EXECUTABLE)
    message(WARNING "Doxygen no encontrado. Instala Doxygen para generar la documentación.")
else()
    message(STATUS "Doxygen encontrado en: ${DOXYGEN_EXECUTABLE}")
endif()

if(DOXYGEN_FOUND AND DOXYGEN_EXECUTABLE)
    # set input and output files
    set(DOXYGEN_IN ${CMAKE_CURRENT_SOURCE_DIR}/Doxyfile.in)
    set(DOXYGEN_OUT ${CMAKE_CURRENT_BINARY_DIR}/Doxyfile)

    # request to configure the file
    configure_file(${DOXYGEN_IN} ${DOXYGEN_OUT} @ONLY)
    message("Doxygen build started")

    add_custom_target( doc_doxygen ALL
        COMMAND ${DOXYGEN_EXECUTABLE} ${DOXYGEN_OUT}
        WORKING_DIRECTORY ${CMAKE_CURRENT_BINARY_DIR}
        COMMENT "Generating API documentation with Doxygen"
        VERBATIM )

else(DOXYGEN_FOUND)
    message("Doxygen needs to be installed to generate the documentation.")
endif(DOXYGEN_FOUND)





# Detectar el sistema operativo
if(WIN32)
    message(STATUS "Configurando para Windows")
    # Configuraciones específicas de Windows
    # Definir la macro _CRT_SECURE_NO_WARNINGS
    add_definitions(-D_CRT_SECURE_NO_WARNINGS)
elseif(UNIX)
    message(STATUS "Configurando para Unix/Linux")
    # Configuraciones específicas de Unix/Linux
endif()

# Añadir rutas de Conan para encontrar paquetes
list(APPEND CMAKE_PREFIX_PATH "${CMAKE_BINARY_DIR}")

# Buscar Aravis
find_path(aravis_INCLUDE_DIR
    NAMES arv.h
    PATHS ${aravis_PKGCONF_INCLUDE_DIRS} 
)
# Buscar OpenCV
find_path(OpenCV_INCLUDE_DIR
    NAMES opencv2/opencv.hpp
    PATHS ${OpenCV_PKGCONF_INCLUDE_DIRS} 
)

# Buscar doctest
find_path(doctest_INCLUDE_DIR
    NAMES doctest.h
    PATHS ${doctest_PKGCONF_INCLUDE_DIRS} 
)

message("path: ${aravis_PKGCONF_INCLUDE_DIRS}")
message("include: ${INCLUDE_DIR}")

message("path: ${OpenCV_PKGCONF_INCLUDE_DIRS}")
message("include: ${INCLUDE_DIR}")

message("path: ${doctest_PKGCONF_INCLUDE_DIRS}")
message("include: ${INCLUDE_DIR}")

find_package(aravis REQUIRED)
find_package(OpenCV REQUIRED)
find_package(doctest REQUIRED)

add_executable(proyectoSensiaBridge
    src/main.cpp
    src/SensiaBridge.cpp  
)

add_executable(videotest
    videoshow/main.cpp
    videoshow/SensiaBridge.cpp  
)

add_executable(test
    doctest/test.cpp  
    doctest/SensiaBridge.cpp  

)

add_executable(features
    features/main.cpp
    features/features.cpp  
)
add_executable(node
    nodeclass/main.cpp
    nodeclass/node.cpp  
)


# Configurar las rutas de inclusión y bibliotecas según el sistema operativo
if(WIN32)
    target_include_directories(proyectoSensiaBridge PRIVATE ${CONAN_INCLUDE_DIRS})
    target_link_libraries(proyectoSensiaBridge PRIVATE ${CONAN_LIBS} aravis::aravis)
    target_include_directories(videotest PRIVATE ${CONAN_INCLUDE_DIRS})
    target_link_libraries(videotest PRIVATE ${CONAN_LIBS} aravis::aravis ${OpenCV_LIBS})
    target_include_directories(test PRIVATE ${CONAN_INCLUDE_DIRS})
    target_link_libraries(test PRIVATE ${CONAN_LIBS} doctest::doctest aravis::aravis)
    target_include_directories(features PRIVATE ${CONAN_INCLUDE_DIRS})
    target_link_libraries(features PRIVATE ${CONAN_LIBS} aravis::aravis)
    target_include_directories(node PRIVATE ${CONAN_INCLUDE_DIRS})
    target_link_libraries(node PRIVATE ${CONAN_LIBS} aravis::aravis)

elseif(UNIX)
    target_include_directories(proyectoSensiaBridge PUBLIC ${CONAN_INCLUDE_DIRS})
    target_link_libraries(proyectoSensiaBridge PUBLIC ${CONAN_LIBS} aravis::aravis)
    target_include_directories(videotest PRIVATE ${CONAN_INCLUDE_DIRS})
    target_link_libraries(videotest PRIVATE ${CONAN_LIBS} aravis::aravis ${OpenCV_LIBS})
    target_include_directories(test PRIVATE ${CONAN_INCLUDE_DIRS})
    target_link_libraries(test PRIVATE ${CONAN_LIBS} doctest::doctest aravis::aravis)


endif()

message(STATUS "paso 5")

# Incluir configuración de clang-tidy y clang-format desde un archivo en cmake/clang_setup.cmake
include(${CMAKE_SOURCE_DIR}/cmake/clang_setup.cmake)