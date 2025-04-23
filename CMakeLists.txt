project(TTYping)

find_package(Curses REQUIRED)

add_executable(TTYping src/type.cpp src/TypingTestClass.cpp)
include_directories(headers)

file(COPY resources DESTINATION ${CMAKE_BINARY_DIR})
target_link_libraries(TTYping PRIVATE Curses::Curses)
