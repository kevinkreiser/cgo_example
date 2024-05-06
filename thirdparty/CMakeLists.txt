cmake_minimum_required(VERSION 3.5)
project(foo)
set(CMAKE_CXX_STANDARD 17)

# add a simple dependency like lz4
include(FindPkgConfig)
pkg_check_modules(LZ4 REQUIRED IMPORTED_TARGET liblz4)

# c++ library
add_library(foo src/foo.cpp)
target_include_directories(foo PUBLIC ${CMAKE_CURRENT_SOURCE_DIR}/include)
target_link_libraries(foo PUBLIC PkgConfig::LZ4)
set_target_properties(foo PROPERTIES POSITION_INDEPENDENT_CODE ON)
install(DIRECTORY ${CMAKE_CURRENT_SOURCE_DIR}/include/ DESTINATION include FILES_MATCHING PATTERN "*.hpp")
install(TARGETS foo DESTINATION lib ARCHIVE DESTINATION lib)

# c library
add_library(foo_c src/foo_c.cpp)
target_include_directories(foo_c PUBLIC ${CMAKE_CURRENT_SOURCE_DIR}/include)
target_link_libraries(foo_c PUBLIC foo)
install(DIRECTORY ${CMAKE_CURRENT_SOURCE_DIR}/include/ DESTINATION include FILES_MATCHING PATTERN "*.h")
install(TARGETS foo_c LIBRARY DESTINATION lib ARCHIVE DESTINATION lib)

# pkg-config
configure_file(foo.pc.in foo.pc @ONLY)
install(FILES ${CMAKE_CURRENT_BINARY_DIR}/foo.pc DESTINATION lib/pkgconfig)
