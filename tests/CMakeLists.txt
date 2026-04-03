cmake_minimum_required(VERSION 3.16)

# Find Google Test (or use FetchContent to download it)
include(FetchContent)
FetchContent_Declare(
  googletest
  URL https://github.com/google/googletest/archive/03597a01ee50ed33e9dfd640b249b4be3799d395.zip
)
# For Windows: Prevent overriding the parent project's compiler/linker on Windows
set(gtest_force_shared_crt ON CACHE BOOL "" FORCE)
FetchContent_MakeAvailable(googletest)

# Add test executable
add_executable(tests test_example.cpp)
target_link_libraries(tests gtest_main)

# Add test
add_test(NAME example_test COMMAND tests)