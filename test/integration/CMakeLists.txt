

add_executable(
    main
    main.cpp
    simpleRender.cpp
    inputHandler.cpp
    ShaderLoader.cpp
)

SET(SHADER_PATH "${CMAKE_CURRENT_SOURCE_DIR}/Shader/")
ADD_DEFINITIONS(-DSHADER_PATH="${SHADER_PATH}")



find_package(GLFW REQUIRED)
find_package(X11 REQUIRED)
find_package(AntTweakBar REQUIRED)
find_package(OpenGL REQUIRED)


include_directories("${GLFW_INCLUDE_DIR}" )
include_directories("${ANTTWEAKBAR_INCLUDE_DIR}" )
include_directories("../../3rdParty/GL3W" )



target_link_libraries(main GL3W RTplatec dl  ${OPENGL_LIBRARIES}   ${GLFW_LIBRARIES}    ${ANTTWEAKBAR_LIBRARY}  ${LIBNOISE_LIBRARIES}  ${X11_LIBRARIES} )