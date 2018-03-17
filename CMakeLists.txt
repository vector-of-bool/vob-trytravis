cmake_minimum_required(VERSION 3.7)

project(CMakeTools VERSION 0.11.0 LANGUAGES NONE)

find_program(NODE_EXECUTABLE node)
find_program(NPM_EXECUTABLE npm)
find_program(VSCE_EXECUTABLE vsce)
find_program(SPHINX_EXECUTABLE sphinx-build)

include(CTest)

if(SPHINX_EXECUTABLE)
    message(STATUS "Build documentation with the `docs` target")
    # This docs-copy logic is just for uploading it to my personal site at
    # vector-of-bool.github.io via Jekyll. Don't worry about it too much.
    get_filename_component(vb_site_dir "${CMAKE_CURRENT_SOURCE_DIR}/../vb-site/" ABSOLUTE)
    if(IS_DIRECTORY "${vb_site_dir}")
        message(STATUS "Copying documentation to vb-site")
        get_filename_component(docs_dest "${vb_site_dir}/docs/vscode-cmake-tools" ABSOLUTE)
        set(docs_copy
            COMMAND "${CMAKE_COMMAND}" -E copy_directory
                "${CMAKE_CURRENT_BINARY_DIR}/docs"
                "${docs_dest}"
            )
    endif()
endif()

add_subdirectory(test)