cmake_minimum_required(VERSION 3.10)
set(aravis_PKGCONF_INCLUDE_DIRS "C:/CODE/videoaravis-main/build/generators")
set(OpenCV_PKGCONF_INCLUDE_DIRS "C:/CODE/videoaravis-main/build/generators")
set(doctest_PKGCONF_INCLUDE_DIRS "C:/CODE/videoaravis-main/build/generators")

project(proyectoSensiaBridge)
project(videotest)
project(test)
# Habilitar C++17
set(CMAKE_CXX_STANDARD 17)
set(CMAKE_CXX_STANDARD_REQUIRED True)


# Politicas de CMake - compatible con versiones anteriores
if(POLICY CMP0990)
  cmake_policy(SET CMP0990 NEW)
endif()

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

# Configurar las rutas de inclusión y bibliotecas según el sistema operativo
if(WIN32)
    target_include_directories(proyectoSensiaBridge PRIVATE ${CONAN_INCLUDE_DIRS})
    target_link_libraries(proyectoSensiaBridge PRIVATE ${CONAN_LIBS} aravis::aravis ${OpenCV_LIBS})
    target_include_directories(videotest PRIVATE ${CONAN_INCLUDE_DIRS})
    target_link_libraries(videotest PRIVATE ${CONAN_LIBS} aravis::aravis ${OpenCV_LIBS})
    target_include_directories(test PRIVATE ${CONAN_INCLUDE_DIRS})
    target_link_libraries(test PRIVATE ${CONAN_LIBS} doctest::doctest aravis::aravis)
elseif(UNIX)
    target_include_directories(proyectoSensiaBridge PUBLIC ${CONAN_INCLUDE_DIRS})
    target_link_libraries(proyectoSensiaBridge PUBLIC ${CONAN_LIBS} aravis::aravis ${OpenCV_LIBS})

endif()

message(STATUS "paso 5")

# Mensajes para verificar las rutas de inclusión y las bibliotecas
message("Include directories: ${CONAN_INCLUDE_DIRS}")
message("Libraries: ${CONAN_LIBS}")