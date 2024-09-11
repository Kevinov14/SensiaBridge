message(STATUS "Conan: Using CMakeDeps conandeps_legacy.cmake aggregator via include()")
message(STATUS "Conan: It is recommended to use explicit find_package() per dependency instead")

find_package(aravis)
find_package(OpenCV)
find_package(doctest)

set(CONANDEPS_LEGACY  aravis::aravis  opencv::opencv  doctest::doctest )