cmake_minimum_required(VERSION 3.16)
project(template-C-Project VERSION 1.0.0 LANGUAGES CXX)

# Set C++ standard
set(CMAKE_CXX_STANDARD 17)
set(CMAKE_CXX_STANDARD_REQUIRED ON)

# Include directories
include_directories(include)

# Add executable
add_executable(${PROJECT_NAME} src/main.cpp)

# Enable testing
enable_testing()

# Add tests subdirectory
add_subdirectory(tests)

# Install targets (optional)
install(TARGETS ${PROJECT_NAME}
    RUNTIME DESTINATION bin
)