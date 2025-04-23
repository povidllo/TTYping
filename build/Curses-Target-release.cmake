# Avoid multiple calls to find_package to append duplicated properties to the targets
include_guard()########### VARIABLES #######################################################################
#############################################################################################
set(ncurses_FRAMEWORKS_FOUND_RELEASE "") # Will be filled later
conan_find_apple_frameworks(ncurses_FRAMEWORKS_FOUND_RELEASE "${ncurses_FRAMEWORKS_RELEASE}" "${ncurses_FRAMEWORK_DIRS_RELEASE}")

set(ncurses_LIBRARIES_TARGETS "") # Will be filled later


######## Create an interface target to contain all the dependencies (frameworks, system and conan deps)
if(NOT TARGET ncurses_DEPS_TARGET)
    add_library(ncurses_DEPS_TARGET INTERFACE IMPORTED)
endif()

set_property(TARGET ncurses_DEPS_TARGET
             APPEND PROPERTY INTERFACE_LINK_LIBRARIES
             $<$<CONFIG:Release>:${ncurses_FRAMEWORKS_FOUND_RELEASE}>
             $<$<CONFIG:Release>:${ncurses_SYSTEM_LIBS_RELEASE}>
             $<$<CONFIG:Release>:ncurses::tinfo;ncurses::libcurses>)

####### Find the libraries declared in cpp_info.libs, create an IMPORTED target for each one and link the
####### ncurses_DEPS_TARGET to all of them
conan_package_library_targets("${ncurses_LIBS_RELEASE}"    # libraries
                              "${ncurses_LIB_DIRS_RELEASE}" # package_libdir
                              "${ncurses_BIN_DIRS_RELEASE}" # package_bindir
                              "${ncurses_LIBRARY_TYPE_RELEASE}"
                              "${ncurses_IS_HOST_WINDOWS_RELEASE}"
                              ncurses_DEPS_TARGET
                              ncurses_LIBRARIES_TARGETS  # out_libraries_targets
                              "_RELEASE"
                              "ncurses"    # package_name
                              "${ncurses_NO_SONAME_MODE_RELEASE}")  # soname

# FIXME: What is the result of this for multi-config? All configs adding themselves to path?
set(CMAKE_MODULE_PATH ${ncurses_BUILD_DIRS_RELEASE} ${CMAKE_MODULE_PATH})

########## COMPONENTS TARGET PROPERTIES Release ########################################

    ########## COMPONENT ncurses::curses++ #############

        set(ncurses_ncurses_curses++_FRAMEWORKS_FOUND_RELEASE "")
        conan_find_apple_frameworks(ncurses_ncurses_curses++_FRAMEWORKS_FOUND_RELEASE "${ncurses_ncurses_curses++_FRAMEWORKS_RELEASE}" "${ncurses_ncurses_curses++_FRAMEWORK_DIRS_RELEASE}")

        set(ncurses_ncurses_curses++_LIBRARIES_TARGETS "")

        ######## Create an interface target to contain all the dependencies (frameworks, system and conan deps)
        if(NOT TARGET ncurses_ncurses_curses++_DEPS_TARGET)
            add_library(ncurses_ncurses_curses++_DEPS_TARGET INTERFACE IMPORTED)
        endif()

        set_property(TARGET ncurses_ncurses_curses++_DEPS_TARGET
                     APPEND PROPERTY INTERFACE_LINK_LIBRARIES
                     $<$<CONFIG:Release>:${ncurses_ncurses_curses++_FRAMEWORKS_FOUND_RELEASE}>
                     $<$<CONFIG:Release>:${ncurses_ncurses_curses++_SYSTEM_LIBS_RELEASE}>
                     $<$<CONFIG:Release>:${ncurses_ncurses_curses++_DEPENDENCIES_RELEASE}>
                     )

        ####### Find the libraries declared in cpp_info.component["xxx"].libs,
        ####### create an IMPORTED target for each one and link the 'ncurses_ncurses_curses++_DEPS_TARGET' to all of them
        conan_package_library_targets("${ncurses_ncurses_curses++_LIBS_RELEASE}"
                              "${ncurses_ncurses_curses++_LIB_DIRS_RELEASE}"
                              "${ncurses_ncurses_curses++_BIN_DIRS_RELEASE}" # package_bindir
                              "${ncurses_ncurses_curses++_LIBRARY_TYPE_RELEASE}"
                              "${ncurses_ncurses_curses++_IS_HOST_WINDOWS_RELEASE}"
                              ncurses_ncurses_curses++_DEPS_TARGET
                              ncurses_ncurses_curses++_LIBRARIES_TARGETS
                              "_RELEASE"
                              "ncurses_ncurses_curses++"
                              "${ncurses_ncurses_curses++_NO_SONAME_MODE_RELEASE}")


        ########## TARGET PROPERTIES #####################################
        set_property(TARGET ncurses::curses++
                     APPEND PROPERTY INTERFACE_LINK_LIBRARIES
                     $<$<CONFIG:Release>:${ncurses_ncurses_curses++_OBJECTS_RELEASE}>
                     $<$<CONFIG:Release>:${ncurses_ncurses_curses++_LIBRARIES_TARGETS}>
                     )

        if("${ncurses_ncurses_curses++_LIBS_RELEASE}" STREQUAL "")
            # If the component is not declaring any "cpp_info.components['foo'].libs" the system, frameworks etc are not
            # linked to the imported targets and we need to do it to the global target
            set_property(TARGET ncurses::curses++
                         APPEND PROPERTY INTERFACE_LINK_LIBRARIES
                         ncurses_ncurses_curses++_DEPS_TARGET)
        endif()

        set_property(TARGET ncurses::curses++ APPEND PROPERTY INTERFACE_LINK_OPTIONS
                     $<$<CONFIG:Release>:${ncurses_ncurses_curses++_LINKER_FLAGS_RELEASE}>)
        set_property(TARGET ncurses::curses++ APPEND PROPERTY INTERFACE_INCLUDE_DIRECTORIES
                     $<$<CONFIG:Release>:${ncurses_ncurses_curses++_INCLUDE_DIRS_RELEASE}>)
        set_property(TARGET ncurses::curses++ APPEND PROPERTY INTERFACE_LINK_DIRECTORIES
                     $<$<CONFIG:Release>:${ncurses_ncurses_curses++_LIB_DIRS_RELEASE}>)
        set_property(TARGET ncurses::curses++ APPEND PROPERTY INTERFACE_COMPILE_DEFINITIONS
                     $<$<CONFIG:Release>:${ncurses_ncurses_curses++_COMPILE_DEFINITIONS_RELEASE}>)
        set_property(TARGET ncurses::curses++ APPEND PROPERTY INTERFACE_COMPILE_OPTIONS
                     $<$<CONFIG:Release>:${ncurses_ncurses_curses++_COMPILE_OPTIONS_RELEASE}>)

    ########## COMPONENT ncurses::ticlib #############

        set(ncurses_ncurses_ticlib_FRAMEWORKS_FOUND_RELEASE "")
        conan_find_apple_frameworks(ncurses_ncurses_ticlib_FRAMEWORKS_FOUND_RELEASE "${ncurses_ncurses_ticlib_FRAMEWORKS_RELEASE}" "${ncurses_ncurses_ticlib_FRAMEWORK_DIRS_RELEASE}")

        set(ncurses_ncurses_ticlib_LIBRARIES_TARGETS "")

        ######## Create an interface target to contain all the dependencies (frameworks, system and conan deps)
        if(NOT TARGET ncurses_ncurses_ticlib_DEPS_TARGET)
            add_library(ncurses_ncurses_ticlib_DEPS_TARGET INTERFACE IMPORTED)
        endif()

        set_property(TARGET ncurses_ncurses_ticlib_DEPS_TARGET
                     APPEND PROPERTY INTERFACE_LINK_LIBRARIES
                     $<$<CONFIG:Release>:${ncurses_ncurses_ticlib_FRAMEWORKS_FOUND_RELEASE}>
                     $<$<CONFIG:Release>:${ncurses_ncurses_ticlib_SYSTEM_LIBS_RELEASE}>
                     $<$<CONFIG:Release>:${ncurses_ncurses_ticlib_DEPENDENCIES_RELEASE}>
                     )

        ####### Find the libraries declared in cpp_info.component["xxx"].libs,
        ####### create an IMPORTED target for each one and link the 'ncurses_ncurses_ticlib_DEPS_TARGET' to all of them
        conan_package_library_targets("${ncurses_ncurses_ticlib_LIBS_RELEASE}"
                              "${ncurses_ncurses_ticlib_LIB_DIRS_RELEASE}"
                              "${ncurses_ncurses_ticlib_BIN_DIRS_RELEASE}" # package_bindir
                              "${ncurses_ncurses_ticlib_LIBRARY_TYPE_RELEASE}"
                              "${ncurses_ncurses_ticlib_IS_HOST_WINDOWS_RELEASE}"
                              ncurses_ncurses_ticlib_DEPS_TARGET
                              ncurses_ncurses_ticlib_LIBRARIES_TARGETS
                              "_RELEASE"
                              "ncurses_ncurses_ticlib"
                              "${ncurses_ncurses_ticlib_NO_SONAME_MODE_RELEASE}")


        ########## TARGET PROPERTIES #####################################
        set_property(TARGET ncurses::ticlib
                     APPEND PROPERTY INTERFACE_LINK_LIBRARIES
                     $<$<CONFIG:Release>:${ncurses_ncurses_ticlib_OBJECTS_RELEASE}>
                     $<$<CONFIG:Release>:${ncurses_ncurses_ticlib_LIBRARIES_TARGETS}>
                     )

        if("${ncurses_ncurses_ticlib_LIBS_RELEASE}" STREQUAL "")
            # If the component is not declaring any "cpp_info.components['foo'].libs" the system, frameworks etc are not
            # linked to the imported targets and we need to do it to the global target
            set_property(TARGET ncurses::ticlib
                         APPEND PROPERTY INTERFACE_LINK_LIBRARIES
                         ncurses_ncurses_ticlib_DEPS_TARGET)
        endif()

        set_property(TARGET ncurses::ticlib APPEND PROPERTY INTERFACE_LINK_OPTIONS
                     $<$<CONFIG:Release>:${ncurses_ncurses_ticlib_LINKER_FLAGS_RELEASE}>)
        set_property(TARGET ncurses::ticlib APPEND PROPERTY INTERFACE_INCLUDE_DIRECTORIES
                     $<$<CONFIG:Release>:${ncurses_ncurses_ticlib_INCLUDE_DIRS_RELEASE}>)
        set_property(TARGET ncurses::ticlib APPEND PROPERTY INTERFACE_LINK_DIRECTORIES
                     $<$<CONFIG:Release>:${ncurses_ncurses_ticlib_LIB_DIRS_RELEASE}>)
        set_property(TARGET ncurses::ticlib APPEND PROPERTY INTERFACE_COMPILE_DEFINITIONS
                     $<$<CONFIG:Release>:${ncurses_ncurses_ticlib_COMPILE_DEFINITIONS_RELEASE}>)
        set_property(TARGET ncurses::ticlib APPEND PROPERTY INTERFACE_COMPILE_OPTIONS
                     $<$<CONFIG:Release>:${ncurses_ncurses_ticlib_COMPILE_OPTIONS_RELEASE}>)

    ########## COMPONENT ncurses::form #############

        set(ncurses_ncurses_form_FRAMEWORKS_FOUND_RELEASE "")
        conan_find_apple_frameworks(ncurses_ncurses_form_FRAMEWORKS_FOUND_RELEASE "${ncurses_ncurses_form_FRAMEWORKS_RELEASE}" "${ncurses_ncurses_form_FRAMEWORK_DIRS_RELEASE}")

        set(ncurses_ncurses_form_LIBRARIES_TARGETS "")

        ######## Create an interface target to contain all the dependencies (frameworks, system and conan deps)
        if(NOT TARGET ncurses_ncurses_form_DEPS_TARGET)
            add_library(ncurses_ncurses_form_DEPS_TARGET INTERFACE IMPORTED)
        endif()

        set_property(TARGET ncurses_ncurses_form_DEPS_TARGET
                     APPEND PROPERTY INTERFACE_LINK_LIBRARIES
                     $<$<CONFIG:Release>:${ncurses_ncurses_form_FRAMEWORKS_FOUND_RELEASE}>
                     $<$<CONFIG:Release>:${ncurses_ncurses_form_SYSTEM_LIBS_RELEASE}>
                     $<$<CONFIG:Release>:${ncurses_ncurses_form_DEPENDENCIES_RELEASE}>
                     )

        ####### Find the libraries declared in cpp_info.component["xxx"].libs,
        ####### create an IMPORTED target for each one and link the 'ncurses_ncurses_form_DEPS_TARGET' to all of them
        conan_package_library_targets("${ncurses_ncurses_form_LIBS_RELEASE}"
                              "${ncurses_ncurses_form_LIB_DIRS_RELEASE}"
                              "${ncurses_ncurses_form_BIN_DIRS_RELEASE}" # package_bindir
                              "${ncurses_ncurses_form_LIBRARY_TYPE_RELEASE}"
                              "${ncurses_ncurses_form_IS_HOST_WINDOWS_RELEASE}"
                              ncurses_ncurses_form_DEPS_TARGET
                              ncurses_ncurses_form_LIBRARIES_TARGETS
                              "_RELEASE"
                              "ncurses_ncurses_form"
                              "${ncurses_ncurses_form_NO_SONAME_MODE_RELEASE}")


        ########## TARGET PROPERTIES #####################################
        set_property(TARGET ncurses::form
                     APPEND PROPERTY INTERFACE_LINK_LIBRARIES
                     $<$<CONFIG:Release>:${ncurses_ncurses_form_OBJECTS_RELEASE}>
                     $<$<CONFIG:Release>:${ncurses_ncurses_form_LIBRARIES_TARGETS}>
                     )

        if("${ncurses_ncurses_form_LIBS_RELEASE}" STREQUAL "")
            # If the component is not declaring any "cpp_info.components['foo'].libs" the system, frameworks etc are not
            # linked to the imported targets and we need to do it to the global target
            set_property(TARGET ncurses::form
                         APPEND PROPERTY INTERFACE_LINK_LIBRARIES
                         ncurses_ncurses_form_DEPS_TARGET)
        endif()

        set_property(TARGET ncurses::form APPEND PROPERTY INTERFACE_LINK_OPTIONS
                     $<$<CONFIG:Release>:${ncurses_ncurses_form_LINKER_FLAGS_RELEASE}>)
        set_property(TARGET ncurses::form APPEND PROPERTY INTERFACE_INCLUDE_DIRECTORIES
                     $<$<CONFIG:Release>:${ncurses_ncurses_form_INCLUDE_DIRS_RELEASE}>)
        set_property(TARGET ncurses::form APPEND PROPERTY INTERFACE_LINK_DIRECTORIES
                     $<$<CONFIG:Release>:${ncurses_ncurses_form_LIB_DIRS_RELEASE}>)
        set_property(TARGET ncurses::form APPEND PROPERTY INTERFACE_COMPILE_DEFINITIONS
                     $<$<CONFIG:Release>:${ncurses_ncurses_form_COMPILE_DEFINITIONS_RELEASE}>)
        set_property(TARGET ncurses::form APPEND PROPERTY INTERFACE_COMPILE_OPTIONS
                     $<$<CONFIG:Release>:${ncurses_ncurses_form_COMPILE_OPTIONS_RELEASE}>)

    ########## COMPONENT ncurses::menu #############

        set(ncurses_ncurses_menu_FRAMEWORKS_FOUND_RELEASE "")
        conan_find_apple_frameworks(ncurses_ncurses_menu_FRAMEWORKS_FOUND_RELEASE "${ncurses_ncurses_menu_FRAMEWORKS_RELEASE}" "${ncurses_ncurses_menu_FRAMEWORK_DIRS_RELEASE}")

        set(ncurses_ncurses_menu_LIBRARIES_TARGETS "")

        ######## Create an interface target to contain all the dependencies (frameworks, system and conan deps)
        if(NOT TARGET ncurses_ncurses_menu_DEPS_TARGET)
            add_library(ncurses_ncurses_menu_DEPS_TARGET INTERFACE IMPORTED)
        endif()

        set_property(TARGET ncurses_ncurses_menu_DEPS_TARGET
                     APPEND PROPERTY INTERFACE_LINK_LIBRARIES
                     $<$<CONFIG:Release>:${ncurses_ncurses_menu_FRAMEWORKS_FOUND_RELEASE}>
                     $<$<CONFIG:Release>:${ncurses_ncurses_menu_SYSTEM_LIBS_RELEASE}>
                     $<$<CONFIG:Release>:${ncurses_ncurses_menu_DEPENDENCIES_RELEASE}>
                     )

        ####### Find the libraries declared in cpp_info.component["xxx"].libs,
        ####### create an IMPORTED target for each one and link the 'ncurses_ncurses_menu_DEPS_TARGET' to all of them
        conan_package_library_targets("${ncurses_ncurses_menu_LIBS_RELEASE}"
                              "${ncurses_ncurses_menu_LIB_DIRS_RELEASE}"
                              "${ncurses_ncurses_menu_BIN_DIRS_RELEASE}" # package_bindir
                              "${ncurses_ncurses_menu_LIBRARY_TYPE_RELEASE}"
                              "${ncurses_ncurses_menu_IS_HOST_WINDOWS_RELEASE}"
                              ncurses_ncurses_menu_DEPS_TARGET
                              ncurses_ncurses_menu_LIBRARIES_TARGETS
                              "_RELEASE"
                              "ncurses_ncurses_menu"
                              "${ncurses_ncurses_menu_NO_SONAME_MODE_RELEASE}")


        ########## TARGET PROPERTIES #####################################
        set_property(TARGET ncurses::menu
                     APPEND PROPERTY INTERFACE_LINK_LIBRARIES
                     $<$<CONFIG:Release>:${ncurses_ncurses_menu_OBJECTS_RELEASE}>
                     $<$<CONFIG:Release>:${ncurses_ncurses_menu_LIBRARIES_TARGETS}>
                     )

        if("${ncurses_ncurses_menu_LIBS_RELEASE}" STREQUAL "")
            # If the component is not declaring any "cpp_info.components['foo'].libs" the system, frameworks etc are not
            # linked to the imported targets and we need to do it to the global target
            set_property(TARGET ncurses::menu
                         APPEND PROPERTY INTERFACE_LINK_LIBRARIES
                         ncurses_ncurses_menu_DEPS_TARGET)
        endif()

        set_property(TARGET ncurses::menu APPEND PROPERTY INTERFACE_LINK_OPTIONS
                     $<$<CONFIG:Release>:${ncurses_ncurses_menu_LINKER_FLAGS_RELEASE}>)
        set_property(TARGET ncurses::menu APPEND PROPERTY INTERFACE_INCLUDE_DIRECTORIES
                     $<$<CONFIG:Release>:${ncurses_ncurses_menu_INCLUDE_DIRS_RELEASE}>)
        set_property(TARGET ncurses::menu APPEND PROPERTY INTERFACE_LINK_DIRECTORIES
                     $<$<CONFIG:Release>:${ncurses_ncurses_menu_LIB_DIRS_RELEASE}>)
        set_property(TARGET ncurses::menu APPEND PROPERTY INTERFACE_COMPILE_DEFINITIONS
                     $<$<CONFIG:Release>:${ncurses_ncurses_menu_COMPILE_DEFINITIONS_RELEASE}>)
        set_property(TARGET ncurses::menu APPEND PROPERTY INTERFACE_COMPILE_OPTIONS
                     $<$<CONFIG:Release>:${ncurses_ncurses_menu_COMPILE_OPTIONS_RELEASE}>)

    ########## COMPONENT ncurses::panel #############

        set(ncurses_ncurses_panel_FRAMEWORKS_FOUND_RELEASE "")
        conan_find_apple_frameworks(ncurses_ncurses_panel_FRAMEWORKS_FOUND_RELEASE "${ncurses_ncurses_panel_FRAMEWORKS_RELEASE}" "${ncurses_ncurses_panel_FRAMEWORK_DIRS_RELEASE}")

        set(ncurses_ncurses_panel_LIBRARIES_TARGETS "")

        ######## Create an interface target to contain all the dependencies (frameworks, system and conan deps)
        if(NOT TARGET ncurses_ncurses_panel_DEPS_TARGET)
            add_library(ncurses_ncurses_panel_DEPS_TARGET INTERFACE IMPORTED)
        endif()

        set_property(TARGET ncurses_ncurses_panel_DEPS_TARGET
                     APPEND PROPERTY INTERFACE_LINK_LIBRARIES
                     $<$<CONFIG:Release>:${ncurses_ncurses_panel_FRAMEWORKS_FOUND_RELEASE}>
                     $<$<CONFIG:Release>:${ncurses_ncurses_panel_SYSTEM_LIBS_RELEASE}>
                     $<$<CONFIG:Release>:${ncurses_ncurses_panel_DEPENDENCIES_RELEASE}>
                     )

        ####### Find the libraries declared in cpp_info.component["xxx"].libs,
        ####### create an IMPORTED target for each one and link the 'ncurses_ncurses_panel_DEPS_TARGET' to all of them
        conan_package_library_targets("${ncurses_ncurses_panel_LIBS_RELEASE}"
                              "${ncurses_ncurses_panel_LIB_DIRS_RELEASE}"
                              "${ncurses_ncurses_panel_BIN_DIRS_RELEASE}" # package_bindir
                              "${ncurses_ncurses_panel_LIBRARY_TYPE_RELEASE}"
                              "${ncurses_ncurses_panel_IS_HOST_WINDOWS_RELEASE}"
                              ncurses_ncurses_panel_DEPS_TARGET
                              ncurses_ncurses_panel_LIBRARIES_TARGETS
                              "_RELEASE"
                              "ncurses_ncurses_panel"
                              "${ncurses_ncurses_panel_NO_SONAME_MODE_RELEASE}")


        ########## TARGET PROPERTIES #####################################
        set_property(TARGET ncurses::panel
                     APPEND PROPERTY INTERFACE_LINK_LIBRARIES
                     $<$<CONFIG:Release>:${ncurses_ncurses_panel_OBJECTS_RELEASE}>
                     $<$<CONFIG:Release>:${ncurses_ncurses_panel_LIBRARIES_TARGETS}>
                     )

        if("${ncurses_ncurses_panel_LIBS_RELEASE}" STREQUAL "")
            # If the component is not declaring any "cpp_info.components['foo'].libs" the system, frameworks etc are not
            # linked to the imported targets and we need to do it to the global target
            set_property(TARGET ncurses::panel
                         APPEND PROPERTY INTERFACE_LINK_LIBRARIES
                         ncurses_ncurses_panel_DEPS_TARGET)
        endif()

        set_property(TARGET ncurses::panel APPEND PROPERTY INTERFACE_LINK_OPTIONS
                     $<$<CONFIG:Release>:${ncurses_ncurses_panel_LINKER_FLAGS_RELEASE}>)
        set_property(TARGET ncurses::panel APPEND PROPERTY INTERFACE_INCLUDE_DIRECTORIES
                     $<$<CONFIG:Release>:${ncurses_ncurses_panel_INCLUDE_DIRS_RELEASE}>)
        set_property(TARGET ncurses::panel APPEND PROPERTY INTERFACE_LINK_DIRECTORIES
                     $<$<CONFIG:Release>:${ncurses_ncurses_panel_LIB_DIRS_RELEASE}>)
        set_property(TARGET ncurses::panel APPEND PROPERTY INTERFACE_COMPILE_DEFINITIONS
                     $<$<CONFIG:Release>:${ncurses_ncurses_panel_COMPILE_DEFINITIONS_RELEASE}>)
        set_property(TARGET ncurses::panel APPEND PROPERTY INTERFACE_COMPILE_OPTIONS
                     $<$<CONFIG:Release>:${ncurses_ncurses_panel_COMPILE_OPTIONS_RELEASE}>)

    ########## COMPONENT ncurses::libcurses #############

        set(ncurses_ncurses_libcurses_FRAMEWORKS_FOUND_RELEASE "")
        conan_find_apple_frameworks(ncurses_ncurses_libcurses_FRAMEWORKS_FOUND_RELEASE "${ncurses_ncurses_libcurses_FRAMEWORKS_RELEASE}" "${ncurses_ncurses_libcurses_FRAMEWORK_DIRS_RELEASE}")

        set(ncurses_ncurses_libcurses_LIBRARIES_TARGETS "")

        ######## Create an interface target to contain all the dependencies (frameworks, system and conan deps)
        if(NOT TARGET ncurses_ncurses_libcurses_DEPS_TARGET)
            add_library(ncurses_ncurses_libcurses_DEPS_TARGET INTERFACE IMPORTED)
        endif()

        set_property(TARGET ncurses_ncurses_libcurses_DEPS_TARGET
                     APPEND PROPERTY INTERFACE_LINK_LIBRARIES
                     $<$<CONFIG:Release>:${ncurses_ncurses_libcurses_FRAMEWORKS_FOUND_RELEASE}>
                     $<$<CONFIG:Release>:${ncurses_ncurses_libcurses_SYSTEM_LIBS_RELEASE}>
                     $<$<CONFIG:Release>:${ncurses_ncurses_libcurses_DEPENDENCIES_RELEASE}>
                     )

        ####### Find the libraries declared in cpp_info.component["xxx"].libs,
        ####### create an IMPORTED target for each one and link the 'ncurses_ncurses_libcurses_DEPS_TARGET' to all of them
        conan_package_library_targets("${ncurses_ncurses_libcurses_LIBS_RELEASE}"
                              "${ncurses_ncurses_libcurses_LIB_DIRS_RELEASE}"
                              "${ncurses_ncurses_libcurses_BIN_DIRS_RELEASE}" # package_bindir
                              "${ncurses_ncurses_libcurses_LIBRARY_TYPE_RELEASE}"
                              "${ncurses_ncurses_libcurses_IS_HOST_WINDOWS_RELEASE}"
                              ncurses_ncurses_libcurses_DEPS_TARGET
                              ncurses_ncurses_libcurses_LIBRARIES_TARGETS
                              "_RELEASE"
                              "ncurses_ncurses_libcurses"
                              "${ncurses_ncurses_libcurses_NO_SONAME_MODE_RELEASE}")


        ########## TARGET PROPERTIES #####################################
        set_property(TARGET ncurses::libcurses
                     APPEND PROPERTY INTERFACE_LINK_LIBRARIES
                     $<$<CONFIG:Release>:${ncurses_ncurses_libcurses_OBJECTS_RELEASE}>
                     $<$<CONFIG:Release>:${ncurses_ncurses_libcurses_LIBRARIES_TARGETS}>
                     )

        if("${ncurses_ncurses_libcurses_LIBS_RELEASE}" STREQUAL "")
            # If the component is not declaring any "cpp_info.components['foo'].libs" the system, frameworks etc are not
            # linked to the imported targets and we need to do it to the global target
            set_property(TARGET ncurses::libcurses
                         APPEND PROPERTY INTERFACE_LINK_LIBRARIES
                         ncurses_ncurses_libcurses_DEPS_TARGET)
        endif()

        set_property(TARGET ncurses::libcurses APPEND PROPERTY INTERFACE_LINK_OPTIONS
                     $<$<CONFIG:Release>:${ncurses_ncurses_libcurses_LINKER_FLAGS_RELEASE}>)
        set_property(TARGET ncurses::libcurses APPEND PROPERTY INTERFACE_INCLUDE_DIRECTORIES
                     $<$<CONFIG:Release>:${ncurses_ncurses_libcurses_INCLUDE_DIRS_RELEASE}>)
        set_property(TARGET ncurses::libcurses APPEND PROPERTY INTERFACE_LINK_DIRECTORIES
                     $<$<CONFIG:Release>:${ncurses_ncurses_libcurses_LIB_DIRS_RELEASE}>)
        set_property(TARGET ncurses::libcurses APPEND PROPERTY INTERFACE_COMPILE_DEFINITIONS
                     $<$<CONFIG:Release>:${ncurses_ncurses_libcurses_COMPILE_DEFINITIONS_RELEASE}>)
        set_property(TARGET ncurses::libcurses APPEND PROPERTY INTERFACE_COMPILE_OPTIONS
                     $<$<CONFIG:Release>:${ncurses_ncurses_libcurses_COMPILE_OPTIONS_RELEASE}>)

    ########## COMPONENT ncurses::libcurses++ #############

        set(ncurses_ncurses_libcurses++_FRAMEWORKS_FOUND_RELEASE "")
        conan_find_apple_frameworks(ncurses_ncurses_libcurses++_FRAMEWORKS_FOUND_RELEASE "${ncurses_ncurses_libcurses++_FRAMEWORKS_RELEASE}" "${ncurses_ncurses_libcurses++_FRAMEWORK_DIRS_RELEASE}")

        set(ncurses_ncurses_libcurses++_LIBRARIES_TARGETS "")

        ######## Create an interface target to contain all the dependencies (frameworks, system and conan deps)
        if(NOT TARGET ncurses_ncurses_libcurses++_DEPS_TARGET)
            add_library(ncurses_ncurses_libcurses++_DEPS_TARGET INTERFACE IMPORTED)
        endif()

        set_property(TARGET ncurses_ncurses_libcurses++_DEPS_TARGET
                     APPEND PROPERTY INTERFACE_LINK_LIBRARIES
                     $<$<CONFIG:Release>:${ncurses_ncurses_libcurses++_FRAMEWORKS_FOUND_RELEASE}>
                     $<$<CONFIG:Release>:${ncurses_ncurses_libcurses++_SYSTEM_LIBS_RELEASE}>
                     $<$<CONFIG:Release>:${ncurses_ncurses_libcurses++_DEPENDENCIES_RELEASE}>
                     )

        ####### Find the libraries declared in cpp_info.component["xxx"].libs,
        ####### create an IMPORTED target for each one and link the 'ncurses_ncurses_libcurses++_DEPS_TARGET' to all of them
        conan_package_library_targets("${ncurses_ncurses_libcurses++_LIBS_RELEASE}"
                              "${ncurses_ncurses_libcurses++_LIB_DIRS_RELEASE}"
                              "${ncurses_ncurses_libcurses++_BIN_DIRS_RELEASE}" # package_bindir
                              "${ncurses_ncurses_libcurses++_LIBRARY_TYPE_RELEASE}"
                              "${ncurses_ncurses_libcurses++_IS_HOST_WINDOWS_RELEASE}"
                              ncurses_ncurses_libcurses++_DEPS_TARGET
                              ncurses_ncurses_libcurses++_LIBRARIES_TARGETS
                              "_RELEASE"
                              "ncurses_ncurses_libcurses++"
                              "${ncurses_ncurses_libcurses++_NO_SONAME_MODE_RELEASE}")


        ########## TARGET PROPERTIES #####################################
        set_property(TARGET ncurses::libcurses++
                     APPEND PROPERTY INTERFACE_LINK_LIBRARIES
                     $<$<CONFIG:Release>:${ncurses_ncurses_libcurses++_OBJECTS_RELEASE}>
                     $<$<CONFIG:Release>:${ncurses_ncurses_libcurses++_LIBRARIES_TARGETS}>
                     )

        if("${ncurses_ncurses_libcurses++_LIBS_RELEASE}" STREQUAL "")
            # If the component is not declaring any "cpp_info.components['foo'].libs" the system, frameworks etc are not
            # linked to the imported targets and we need to do it to the global target
            set_property(TARGET ncurses::libcurses++
                         APPEND PROPERTY INTERFACE_LINK_LIBRARIES
                         ncurses_ncurses_libcurses++_DEPS_TARGET)
        endif()

        set_property(TARGET ncurses::libcurses++ APPEND PROPERTY INTERFACE_LINK_OPTIONS
                     $<$<CONFIG:Release>:${ncurses_ncurses_libcurses++_LINKER_FLAGS_RELEASE}>)
        set_property(TARGET ncurses::libcurses++ APPEND PROPERTY INTERFACE_INCLUDE_DIRECTORIES
                     $<$<CONFIG:Release>:${ncurses_ncurses_libcurses++_INCLUDE_DIRS_RELEASE}>)
        set_property(TARGET ncurses::libcurses++ APPEND PROPERTY INTERFACE_LINK_DIRECTORIES
                     $<$<CONFIG:Release>:${ncurses_ncurses_libcurses++_LIB_DIRS_RELEASE}>)
        set_property(TARGET ncurses::libcurses++ APPEND PROPERTY INTERFACE_COMPILE_DEFINITIONS
                     $<$<CONFIG:Release>:${ncurses_ncurses_libcurses++_COMPILE_DEFINITIONS_RELEASE}>)
        set_property(TARGET ncurses::libcurses++ APPEND PROPERTY INTERFACE_COMPILE_OPTIONS
                     $<$<CONFIG:Release>:${ncurses_ncurses_libcurses++_COMPILE_OPTIONS_RELEASE}>)

    ########## COMPONENT ncurses::tinfo #############

        set(ncurses_ncurses_tinfo_FRAMEWORKS_FOUND_RELEASE "")
        conan_find_apple_frameworks(ncurses_ncurses_tinfo_FRAMEWORKS_FOUND_RELEASE "${ncurses_ncurses_tinfo_FRAMEWORKS_RELEASE}" "${ncurses_ncurses_tinfo_FRAMEWORK_DIRS_RELEASE}")

        set(ncurses_ncurses_tinfo_LIBRARIES_TARGETS "")

        ######## Create an interface target to contain all the dependencies (frameworks, system and conan deps)
        if(NOT TARGET ncurses_ncurses_tinfo_DEPS_TARGET)
            add_library(ncurses_ncurses_tinfo_DEPS_TARGET INTERFACE IMPORTED)
        endif()

        set_property(TARGET ncurses_ncurses_tinfo_DEPS_TARGET
                     APPEND PROPERTY INTERFACE_LINK_LIBRARIES
                     $<$<CONFIG:Release>:${ncurses_ncurses_tinfo_FRAMEWORKS_FOUND_RELEASE}>
                     $<$<CONFIG:Release>:${ncurses_ncurses_tinfo_SYSTEM_LIBS_RELEASE}>
                     $<$<CONFIG:Release>:${ncurses_ncurses_tinfo_DEPENDENCIES_RELEASE}>
                     )

        ####### Find the libraries declared in cpp_info.component["xxx"].libs,
        ####### create an IMPORTED target for each one and link the 'ncurses_ncurses_tinfo_DEPS_TARGET' to all of them
        conan_package_library_targets("${ncurses_ncurses_tinfo_LIBS_RELEASE}"
                              "${ncurses_ncurses_tinfo_LIB_DIRS_RELEASE}"
                              "${ncurses_ncurses_tinfo_BIN_DIRS_RELEASE}" # package_bindir
                              "${ncurses_ncurses_tinfo_LIBRARY_TYPE_RELEASE}"
                              "${ncurses_ncurses_tinfo_IS_HOST_WINDOWS_RELEASE}"
                              ncurses_ncurses_tinfo_DEPS_TARGET
                              ncurses_ncurses_tinfo_LIBRARIES_TARGETS
                              "_RELEASE"
                              "ncurses_ncurses_tinfo"
                              "${ncurses_ncurses_tinfo_NO_SONAME_MODE_RELEASE}")


        ########## TARGET PROPERTIES #####################################
        set_property(TARGET ncurses::tinfo
                     APPEND PROPERTY INTERFACE_LINK_LIBRARIES
                     $<$<CONFIG:Release>:${ncurses_ncurses_tinfo_OBJECTS_RELEASE}>
                     $<$<CONFIG:Release>:${ncurses_ncurses_tinfo_LIBRARIES_TARGETS}>
                     )

        if("${ncurses_ncurses_tinfo_LIBS_RELEASE}" STREQUAL "")
            # If the component is not declaring any "cpp_info.components['foo'].libs" the system, frameworks etc are not
            # linked to the imported targets and we need to do it to the global target
            set_property(TARGET ncurses::tinfo
                         APPEND PROPERTY INTERFACE_LINK_LIBRARIES
                         ncurses_ncurses_tinfo_DEPS_TARGET)
        endif()

        set_property(TARGET ncurses::tinfo APPEND PROPERTY INTERFACE_LINK_OPTIONS
                     $<$<CONFIG:Release>:${ncurses_ncurses_tinfo_LINKER_FLAGS_RELEASE}>)
        set_property(TARGET ncurses::tinfo APPEND PROPERTY INTERFACE_INCLUDE_DIRECTORIES
                     $<$<CONFIG:Release>:${ncurses_ncurses_tinfo_INCLUDE_DIRS_RELEASE}>)
        set_property(TARGET ncurses::tinfo APPEND PROPERTY INTERFACE_LINK_DIRECTORIES
                     $<$<CONFIG:Release>:${ncurses_ncurses_tinfo_LIB_DIRS_RELEASE}>)
        set_property(TARGET ncurses::tinfo APPEND PROPERTY INTERFACE_COMPILE_DEFINITIONS
                     $<$<CONFIG:Release>:${ncurses_ncurses_tinfo_COMPILE_DEFINITIONS_RELEASE}>)
        set_property(TARGET ncurses::tinfo APPEND PROPERTY INTERFACE_COMPILE_OPTIONS
                     $<$<CONFIG:Release>:${ncurses_ncurses_tinfo_COMPILE_OPTIONS_RELEASE}>)

    ########## AGGREGATED GLOBAL TARGET WITH THE COMPONENTS #####################
    set_property(TARGET Curses::Curses APPEND PROPERTY INTERFACE_LINK_LIBRARIES ncurses::curses++)
    set_property(TARGET Curses::Curses APPEND PROPERTY INTERFACE_LINK_LIBRARIES ncurses::ticlib)
    set_property(TARGET Curses::Curses APPEND PROPERTY INTERFACE_LINK_LIBRARIES ncurses::form)
    set_property(TARGET Curses::Curses APPEND PROPERTY INTERFACE_LINK_LIBRARIES ncurses::menu)
    set_property(TARGET Curses::Curses APPEND PROPERTY INTERFACE_LINK_LIBRARIES ncurses::panel)
    set_property(TARGET Curses::Curses APPEND PROPERTY INTERFACE_LINK_LIBRARIES ncurses::libcurses)
    set_property(TARGET Curses::Curses APPEND PROPERTY INTERFACE_LINK_LIBRARIES ncurses::libcurses++)
    set_property(TARGET Curses::Curses APPEND PROPERTY INTERFACE_LINK_LIBRARIES ncurses::tinfo)

########## For the modules (FindXXX)
set(ncurses_LIBRARIES_RELEASE Curses::Curses)
