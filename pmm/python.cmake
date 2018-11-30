function(_pmm_find_python3 ovar)
    file(GLOB pyenv_dirs "$ENV{HOME}/.pyenv/versions/3.*/")
    file(GLOB c_python_dirs "C:/Python3*")
    find_program(
        _ret
        NAMES
            python3.8
            python3.7
            python3.6
            python3.5
            python3.4
            python3.3
            python3.2
            python3.1
            python3.0
            python3
        HINTS
            ${pyenv_dirs}
            ${c_python_dirs}
        PATH_SUFFIXES
            bin
            Scripts
        )
    set("${ovar}" "${_ret}" PARENT_SCOPE)
    unset(_ret CACHE)
endfunction()

function(_pmm_find_python2 ovar)
    file(GLOB pyenv_dirs "$ENV{HOME}/.pyenv/versions/2.*/bin")
    find_program(
        _ret
        NAMES
            python2.8 # ... Just in case
            python2.7
        HINTS
            ${pyenv_dirs}
        PATHS
            C:/Python27
            C:/Python2
            C:/Python
        )
    set("${ovar}" "${_ret}" PARENT_SCOPE)
    unset(_ret CACHE)
endfunction()
