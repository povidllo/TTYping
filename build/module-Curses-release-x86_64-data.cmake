########### AGGREGATED COMPONENTS AND DEPENDENCIES FOR THE MULTI CONFIG #####################
#############################################################################################

list(APPEND ncurses_COMPONENT_NAMES ncurses::tinfo ncurses::libcurses++ ncurses::libcurses ncurses::panel ncurses::menu ncurses::form ncurses::ticlib ncurses::curses++)
list(REMOVE_DUPLICATES ncurses_COMPONENT_NAMES)
if(DEFINED ncurses_FIND_DEPENDENCY_NAMES)
  list(APPEND ncurses_FIND_DEPENDENCY_NAMES )
  list(REMOVE_DUPLICATES ncurses_FIND_DEPENDENCY_NAMES)
else()
  set(ncurses_FIND_DEPENDENCY_NAMES )
endif()

########### VARIABLES #######################################################################
#############################################################################################
set(ncurses_PACKAGE_FOLDER_RELEASE "/home/maksim/.conan2/p/b/ncurs011a3c2593a13/p")
set(ncurses_BUILD_MODULES_PATHS_RELEASE "${ncurses_PACKAGE_FOLDER_RELEASE}/lib/cmake/conan-official-ncurses-targets.cmake")


set(ncurses_INCLUDE_DIRS_RELEASE "${ncurses_PACKAGE_FOLDER_RELEASE}/include"
			"${ncurses_PACKAGE_FOLDER_RELEASE}/include/ncursesw")
set(ncurses_RES_DIRS_RELEASE )
set(ncurses_DEFINITIONS_RELEASE "-DNCURSES_STATIC")
set(ncurses_SHARED_LINK_FLAGS_RELEASE )
set(ncurses_EXE_LINK_FLAGS_RELEASE )
set(ncurses_OBJECTS_RELEASE )
set(ncurses_COMPILE_DEFINITIONS_RELEASE "NCURSES_STATIC")
set(ncurses_COMPILE_OPTIONS_C_RELEASE )
set(ncurses_COMPILE_OPTIONS_CXX_RELEASE )
set(ncurses_LIB_DIRS_RELEASE "${ncurses_PACKAGE_FOLDER_RELEASE}/lib")
set(ncurses_BIN_DIRS_RELEASE )
set(ncurses_LIBRARY_TYPE_RELEASE STATIC)
set(ncurses_IS_HOST_WINDOWS_RELEASE 0)
set(ncurses_LIBS_RELEASE ncurses++w ticw formw menuw panelw ncursesw tinfow)
set(ncurses_SYSTEM_LIBS_RELEASE dl m util stdc++)
set(ncurses_FRAMEWORK_DIRS_RELEASE )
set(ncurses_FRAMEWORKS_RELEASE )
set(ncurses_BUILD_DIRS_RELEASE "${ncurses_PACKAGE_FOLDER_RELEASE}/lib/cmake")
set(ncurses_NO_SONAME_MODE_RELEASE FALSE)


# COMPOUND VARIABLES
set(ncurses_COMPILE_OPTIONS_RELEASE
    "$<$<COMPILE_LANGUAGE:CXX>:${ncurses_COMPILE_OPTIONS_CXX_RELEASE}>"
    "$<$<COMPILE_LANGUAGE:C>:${ncurses_COMPILE_OPTIONS_C_RELEASE}>")
set(ncurses_LINKER_FLAGS_RELEASE
    "$<$<STREQUAL:$<TARGET_PROPERTY:TYPE>,SHARED_LIBRARY>:${ncurses_SHARED_LINK_FLAGS_RELEASE}>"
    "$<$<STREQUAL:$<TARGET_PROPERTY:TYPE>,MODULE_LIBRARY>:${ncurses_SHARED_LINK_FLAGS_RELEASE}>"
    "$<$<STREQUAL:$<TARGET_PROPERTY:TYPE>,EXECUTABLE>:${ncurses_EXE_LINK_FLAGS_RELEASE}>")


set(ncurses_COMPONENTS_RELEASE ncurses::tinfo ncurses::libcurses++ ncurses::libcurses ncurses::panel ncurses::menu ncurses::form ncurses::ticlib ncurses::curses++)
########### COMPONENT ncurses::curses++ VARIABLES ############################################

set(ncurses_ncurses_curses++_INCLUDE_DIRS_RELEASE "${ncurses_PACKAGE_FOLDER_RELEASE}/include"
			"${ncurses_PACKAGE_FOLDER_RELEASE}/include/ncursesw")
set(ncurses_ncurses_curses++_LIB_DIRS_RELEASE "${ncurses_PACKAGE_FOLDER_RELEASE}/lib")
set(ncurses_ncurses_curses++_BIN_DIRS_RELEASE )
set(ncurses_ncurses_curses++_LIBRARY_TYPE_RELEASE STATIC)
set(ncurses_ncurses_curses++_IS_HOST_WINDOWS_RELEASE 0)
set(ncurses_ncurses_curses++_RES_DIRS_RELEASE )
set(ncurses_ncurses_curses++_DEFINITIONS_RELEASE )
set(ncurses_ncurses_curses++_OBJECTS_RELEASE )
set(ncurses_ncurses_curses++_COMPILE_DEFINITIONS_RELEASE )
set(ncurses_ncurses_curses++_COMPILE_OPTIONS_C_RELEASE "")
set(ncurses_ncurses_curses++_COMPILE_OPTIONS_CXX_RELEASE "")
set(ncurses_ncurses_curses++_LIBS_RELEASE ncurses++w)
set(ncurses_ncurses_curses++_SYSTEM_LIBS_RELEASE )
set(ncurses_ncurses_curses++_FRAMEWORK_DIRS_RELEASE )
set(ncurses_ncurses_curses++_FRAMEWORKS_RELEASE )
set(ncurses_ncurses_curses++_DEPENDENCIES_RELEASE ncurses::libcurses)
set(ncurses_ncurses_curses++_SHARED_LINK_FLAGS_RELEASE )
set(ncurses_ncurses_curses++_EXE_LINK_FLAGS_RELEASE )
set(ncurses_ncurses_curses++_NO_SONAME_MODE_RELEASE FALSE)

# COMPOUND VARIABLES
set(ncurses_ncurses_curses++_LINKER_FLAGS_RELEASE
        $<$<STREQUAL:$<TARGET_PROPERTY:TYPE>,SHARED_LIBRARY>:${ncurses_ncurses_curses++_SHARED_LINK_FLAGS_RELEASE}>
        $<$<STREQUAL:$<TARGET_PROPERTY:TYPE>,MODULE_LIBRARY>:${ncurses_ncurses_curses++_SHARED_LINK_FLAGS_RELEASE}>
        $<$<STREQUAL:$<TARGET_PROPERTY:TYPE>,EXECUTABLE>:${ncurses_ncurses_curses++_EXE_LINK_FLAGS_RELEASE}>
)
set(ncurses_ncurses_curses++_COMPILE_OPTIONS_RELEASE
    "$<$<COMPILE_LANGUAGE:CXX>:${ncurses_ncurses_curses++_COMPILE_OPTIONS_CXX_RELEASE}>"
    "$<$<COMPILE_LANGUAGE:C>:${ncurses_ncurses_curses++_COMPILE_OPTIONS_C_RELEASE}>")
########### COMPONENT ncurses::ticlib VARIABLES ############################################

set(ncurses_ncurses_ticlib_INCLUDE_DIRS_RELEASE "${ncurses_PACKAGE_FOLDER_RELEASE}/include"
			"${ncurses_PACKAGE_FOLDER_RELEASE}/include/ncursesw")
set(ncurses_ncurses_ticlib_LIB_DIRS_RELEASE "${ncurses_PACKAGE_FOLDER_RELEASE}/lib")
set(ncurses_ncurses_ticlib_BIN_DIRS_RELEASE )
set(ncurses_ncurses_ticlib_LIBRARY_TYPE_RELEASE STATIC)
set(ncurses_ncurses_ticlib_IS_HOST_WINDOWS_RELEASE 0)
set(ncurses_ncurses_ticlib_RES_DIRS_RELEASE )
set(ncurses_ncurses_ticlib_DEFINITIONS_RELEASE )
set(ncurses_ncurses_ticlib_OBJECTS_RELEASE )
set(ncurses_ncurses_ticlib_COMPILE_DEFINITIONS_RELEASE )
set(ncurses_ncurses_ticlib_COMPILE_OPTIONS_C_RELEASE "")
set(ncurses_ncurses_ticlib_COMPILE_OPTIONS_CXX_RELEASE "")
set(ncurses_ncurses_ticlib_LIBS_RELEASE ticw)
set(ncurses_ncurses_ticlib_SYSTEM_LIBS_RELEASE )
set(ncurses_ncurses_ticlib_FRAMEWORK_DIRS_RELEASE )
set(ncurses_ncurses_ticlib_FRAMEWORKS_RELEASE )
set(ncurses_ncurses_ticlib_DEPENDENCIES_RELEASE ncurses::libcurses)
set(ncurses_ncurses_ticlib_SHARED_LINK_FLAGS_RELEASE )
set(ncurses_ncurses_ticlib_EXE_LINK_FLAGS_RELEASE )
set(ncurses_ncurses_ticlib_NO_SONAME_MODE_RELEASE FALSE)

# COMPOUND VARIABLES
set(ncurses_ncurses_ticlib_LINKER_FLAGS_RELEASE
        $<$<STREQUAL:$<TARGET_PROPERTY:TYPE>,SHARED_LIBRARY>:${ncurses_ncurses_ticlib_SHARED_LINK_FLAGS_RELEASE}>
        $<$<STREQUAL:$<TARGET_PROPERTY:TYPE>,MODULE_LIBRARY>:${ncurses_ncurses_ticlib_SHARED_LINK_FLAGS_RELEASE}>
        $<$<STREQUAL:$<TARGET_PROPERTY:TYPE>,EXECUTABLE>:${ncurses_ncurses_ticlib_EXE_LINK_FLAGS_RELEASE}>
)
set(ncurses_ncurses_ticlib_COMPILE_OPTIONS_RELEASE
    "$<$<COMPILE_LANGUAGE:CXX>:${ncurses_ncurses_ticlib_COMPILE_OPTIONS_CXX_RELEASE}>"
    "$<$<COMPILE_LANGUAGE:C>:${ncurses_ncurses_ticlib_COMPILE_OPTIONS_C_RELEASE}>")
########### COMPONENT ncurses::form VARIABLES ############################################

set(ncurses_ncurses_form_INCLUDE_DIRS_RELEASE "${ncurses_PACKAGE_FOLDER_RELEASE}/include"
			"${ncurses_PACKAGE_FOLDER_RELEASE}/include/ncursesw")
set(ncurses_ncurses_form_LIB_DIRS_RELEASE "${ncurses_PACKAGE_FOLDER_RELEASE}/lib")
set(ncurses_ncurses_form_BIN_DIRS_RELEASE )
set(ncurses_ncurses_form_LIBRARY_TYPE_RELEASE STATIC)
set(ncurses_ncurses_form_IS_HOST_WINDOWS_RELEASE 0)
set(ncurses_ncurses_form_RES_DIRS_RELEASE )
set(ncurses_ncurses_form_DEFINITIONS_RELEASE )
set(ncurses_ncurses_form_OBJECTS_RELEASE )
set(ncurses_ncurses_form_COMPILE_DEFINITIONS_RELEASE )
set(ncurses_ncurses_form_COMPILE_OPTIONS_C_RELEASE "")
set(ncurses_ncurses_form_COMPILE_OPTIONS_CXX_RELEASE "")
set(ncurses_ncurses_form_LIBS_RELEASE formw)
set(ncurses_ncurses_form_SYSTEM_LIBS_RELEASE )
set(ncurses_ncurses_form_FRAMEWORK_DIRS_RELEASE )
set(ncurses_ncurses_form_FRAMEWORKS_RELEASE )
set(ncurses_ncurses_form_DEPENDENCIES_RELEASE ncurses::libcurses)
set(ncurses_ncurses_form_SHARED_LINK_FLAGS_RELEASE )
set(ncurses_ncurses_form_EXE_LINK_FLAGS_RELEASE )
set(ncurses_ncurses_form_NO_SONAME_MODE_RELEASE FALSE)

# COMPOUND VARIABLES
set(ncurses_ncurses_form_LINKER_FLAGS_RELEASE
        $<$<STREQUAL:$<TARGET_PROPERTY:TYPE>,SHARED_LIBRARY>:${ncurses_ncurses_form_SHARED_LINK_FLAGS_RELEASE}>
        $<$<STREQUAL:$<TARGET_PROPERTY:TYPE>,MODULE_LIBRARY>:${ncurses_ncurses_form_SHARED_LINK_FLAGS_RELEASE}>
        $<$<STREQUAL:$<TARGET_PROPERTY:TYPE>,EXECUTABLE>:${ncurses_ncurses_form_EXE_LINK_FLAGS_RELEASE}>
)
set(ncurses_ncurses_form_COMPILE_OPTIONS_RELEASE
    "$<$<COMPILE_LANGUAGE:CXX>:${ncurses_ncurses_form_COMPILE_OPTIONS_CXX_RELEASE}>"
    "$<$<COMPILE_LANGUAGE:C>:${ncurses_ncurses_form_COMPILE_OPTIONS_C_RELEASE}>")
########### COMPONENT ncurses::menu VARIABLES ############################################

set(ncurses_ncurses_menu_INCLUDE_DIRS_RELEASE "${ncurses_PACKAGE_FOLDER_RELEASE}/include"
			"${ncurses_PACKAGE_FOLDER_RELEASE}/include/ncursesw")
set(ncurses_ncurses_menu_LIB_DIRS_RELEASE "${ncurses_PACKAGE_FOLDER_RELEASE}/lib")
set(ncurses_ncurses_menu_BIN_DIRS_RELEASE )
set(ncurses_ncurses_menu_LIBRARY_TYPE_RELEASE STATIC)
set(ncurses_ncurses_menu_IS_HOST_WINDOWS_RELEASE 0)
set(ncurses_ncurses_menu_RES_DIRS_RELEASE )
set(ncurses_ncurses_menu_DEFINITIONS_RELEASE )
set(ncurses_ncurses_menu_OBJECTS_RELEASE )
set(ncurses_ncurses_menu_COMPILE_DEFINITIONS_RELEASE )
set(ncurses_ncurses_menu_COMPILE_OPTIONS_C_RELEASE "")
set(ncurses_ncurses_menu_COMPILE_OPTIONS_CXX_RELEASE "")
set(ncurses_ncurses_menu_LIBS_RELEASE menuw)
set(ncurses_ncurses_menu_SYSTEM_LIBS_RELEASE )
set(ncurses_ncurses_menu_FRAMEWORK_DIRS_RELEASE )
set(ncurses_ncurses_menu_FRAMEWORKS_RELEASE )
set(ncurses_ncurses_menu_DEPENDENCIES_RELEASE ncurses::libcurses)
set(ncurses_ncurses_menu_SHARED_LINK_FLAGS_RELEASE )
set(ncurses_ncurses_menu_EXE_LINK_FLAGS_RELEASE )
set(ncurses_ncurses_menu_NO_SONAME_MODE_RELEASE FALSE)

# COMPOUND VARIABLES
set(ncurses_ncurses_menu_LINKER_FLAGS_RELEASE
        $<$<STREQUAL:$<TARGET_PROPERTY:TYPE>,SHARED_LIBRARY>:${ncurses_ncurses_menu_SHARED_LINK_FLAGS_RELEASE}>
        $<$<STREQUAL:$<TARGET_PROPERTY:TYPE>,MODULE_LIBRARY>:${ncurses_ncurses_menu_SHARED_LINK_FLAGS_RELEASE}>
        $<$<STREQUAL:$<TARGET_PROPERTY:TYPE>,EXECUTABLE>:${ncurses_ncurses_menu_EXE_LINK_FLAGS_RELEASE}>
)
set(ncurses_ncurses_menu_COMPILE_OPTIONS_RELEASE
    "$<$<COMPILE_LANGUAGE:CXX>:${ncurses_ncurses_menu_COMPILE_OPTIONS_CXX_RELEASE}>"
    "$<$<COMPILE_LANGUAGE:C>:${ncurses_ncurses_menu_COMPILE_OPTIONS_C_RELEASE}>")
########### COMPONENT ncurses::panel VARIABLES ############################################

set(ncurses_ncurses_panel_INCLUDE_DIRS_RELEASE "${ncurses_PACKAGE_FOLDER_RELEASE}/include"
			"${ncurses_PACKAGE_FOLDER_RELEASE}/include/ncursesw")
set(ncurses_ncurses_panel_LIB_DIRS_RELEASE "${ncurses_PACKAGE_FOLDER_RELEASE}/lib")
set(ncurses_ncurses_panel_BIN_DIRS_RELEASE )
set(ncurses_ncurses_panel_LIBRARY_TYPE_RELEASE STATIC)
set(ncurses_ncurses_panel_IS_HOST_WINDOWS_RELEASE 0)
set(ncurses_ncurses_panel_RES_DIRS_RELEASE )
set(ncurses_ncurses_panel_DEFINITIONS_RELEASE )
set(ncurses_ncurses_panel_OBJECTS_RELEASE )
set(ncurses_ncurses_panel_COMPILE_DEFINITIONS_RELEASE )
set(ncurses_ncurses_panel_COMPILE_OPTIONS_C_RELEASE "")
set(ncurses_ncurses_panel_COMPILE_OPTIONS_CXX_RELEASE "")
set(ncurses_ncurses_panel_LIBS_RELEASE panelw)
set(ncurses_ncurses_panel_SYSTEM_LIBS_RELEASE )
set(ncurses_ncurses_panel_FRAMEWORK_DIRS_RELEASE )
set(ncurses_ncurses_panel_FRAMEWORKS_RELEASE )
set(ncurses_ncurses_panel_DEPENDENCIES_RELEASE ncurses::libcurses)
set(ncurses_ncurses_panel_SHARED_LINK_FLAGS_RELEASE )
set(ncurses_ncurses_panel_EXE_LINK_FLAGS_RELEASE )
set(ncurses_ncurses_panel_NO_SONAME_MODE_RELEASE FALSE)

# COMPOUND VARIABLES
set(ncurses_ncurses_panel_LINKER_FLAGS_RELEASE
        $<$<STREQUAL:$<TARGET_PROPERTY:TYPE>,SHARED_LIBRARY>:${ncurses_ncurses_panel_SHARED_LINK_FLAGS_RELEASE}>
        $<$<STREQUAL:$<TARGET_PROPERTY:TYPE>,MODULE_LIBRARY>:${ncurses_ncurses_panel_SHARED_LINK_FLAGS_RELEASE}>
        $<$<STREQUAL:$<TARGET_PROPERTY:TYPE>,EXECUTABLE>:${ncurses_ncurses_panel_EXE_LINK_FLAGS_RELEASE}>
)
set(ncurses_ncurses_panel_COMPILE_OPTIONS_RELEASE
    "$<$<COMPILE_LANGUAGE:CXX>:${ncurses_ncurses_panel_COMPILE_OPTIONS_CXX_RELEASE}>"
    "$<$<COMPILE_LANGUAGE:C>:${ncurses_ncurses_panel_COMPILE_OPTIONS_C_RELEASE}>")
########### COMPONENT ncurses::libcurses VARIABLES ############################################

set(ncurses_ncurses_libcurses_INCLUDE_DIRS_RELEASE "${ncurses_PACKAGE_FOLDER_RELEASE}/include"
			"${ncurses_PACKAGE_FOLDER_RELEASE}/include/ncursesw")
set(ncurses_ncurses_libcurses_LIB_DIRS_RELEASE "${ncurses_PACKAGE_FOLDER_RELEASE}/lib")
set(ncurses_ncurses_libcurses_BIN_DIRS_RELEASE )
set(ncurses_ncurses_libcurses_LIBRARY_TYPE_RELEASE STATIC)
set(ncurses_ncurses_libcurses_IS_HOST_WINDOWS_RELEASE 0)
set(ncurses_ncurses_libcurses_RES_DIRS_RELEASE )
set(ncurses_ncurses_libcurses_DEFINITIONS_RELEASE "-DNCURSES_STATIC")
set(ncurses_ncurses_libcurses_OBJECTS_RELEASE )
set(ncurses_ncurses_libcurses_COMPILE_DEFINITIONS_RELEASE "NCURSES_STATIC")
set(ncurses_ncurses_libcurses_COMPILE_OPTIONS_C_RELEASE "")
set(ncurses_ncurses_libcurses_COMPILE_OPTIONS_CXX_RELEASE "")
set(ncurses_ncurses_libcurses_LIBS_RELEASE ncursesw)
set(ncurses_ncurses_libcurses_SYSTEM_LIBS_RELEASE dl m)
set(ncurses_ncurses_libcurses_FRAMEWORK_DIRS_RELEASE )
set(ncurses_ncurses_libcurses_FRAMEWORKS_RELEASE )
set(ncurses_ncurses_libcurses_DEPENDENCIES_RELEASE ncurses::tinfo)
set(ncurses_ncurses_libcurses_SHARED_LINK_FLAGS_RELEASE )
set(ncurses_ncurses_libcurses_EXE_LINK_FLAGS_RELEASE )
set(ncurses_ncurses_libcurses_NO_SONAME_MODE_RELEASE FALSE)

# COMPOUND VARIABLES
set(ncurses_ncurses_libcurses_LINKER_FLAGS_RELEASE
        $<$<STREQUAL:$<TARGET_PROPERTY:TYPE>,SHARED_LIBRARY>:${ncurses_ncurses_libcurses_SHARED_LINK_FLAGS_RELEASE}>
        $<$<STREQUAL:$<TARGET_PROPERTY:TYPE>,MODULE_LIBRARY>:${ncurses_ncurses_libcurses_SHARED_LINK_FLAGS_RELEASE}>
        $<$<STREQUAL:$<TARGET_PROPERTY:TYPE>,EXECUTABLE>:${ncurses_ncurses_libcurses_EXE_LINK_FLAGS_RELEASE}>
)
set(ncurses_ncurses_libcurses_COMPILE_OPTIONS_RELEASE
    "$<$<COMPILE_LANGUAGE:CXX>:${ncurses_ncurses_libcurses_COMPILE_OPTIONS_CXX_RELEASE}>"
    "$<$<COMPILE_LANGUAGE:C>:${ncurses_ncurses_libcurses_COMPILE_OPTIONS_C_RELEASE}>")
########### COMPONENT ncurses::libcurses++ VARIABLES ############################################

set(ncurses_ncurses_libcurses++_INCLUDE_DIRS_RELEASE "${ncurses_PACKAGE_FOLDER_RELEASE}/include")
set(ncurses_ncurses_libcurses++_LIB_DIRS_RELEASE "${ncurses_PACKAGE_FOLDER_RELEASE}/lib")
set(ncurses_ncurses_libcurses++_BIN_DIRS_RELEASE )
set(ncurses_ncurses_libcurses++_LIBRARY_TYPE_RELEASE STATIC)
set(ncurses_ncurses_libcurses++_IS_HOST_WINDOWS_RELEASE 0)
set(ncurses_ncurses_libcurses++_RES_DIRS_RELEASE )
set(ncurses_ncurses_libcurses++_DEFINITIONS_RELEASE )
set(ncurses_ncurses_libcurses++_OBJECTS_RELEASE )
set(ncurses_ncurses_libcurses++_COMPILE_DEFINITIONS_RELEASE )
set(ncurses_ncurses_libcurses++_COMPILE_OPTIONS_C_RELEASE "")
set(ncurses_ncurses_libcurses++_COMPILE_OPTIONS_CXX_RELEASE "")
set(ncurses_ncurses_libcurses++_LIBS_RELEASE )
set(ncurses_ncurses_libcurses++_SYSTEM_LIBS_RELEASE util stdc++)
set(ncurses_ncurses_libcurses++_FRAMEWORK_DIRS_RELEASE )
set(ncurses_ncurses_libcurses++_FRAMEWORKS_RELEASE )
set(ncurses_ncurses_libcurses++_DEPENDENCIES_RELEASE )
set(ncurses_ncurses_libcurses++_SHARED_LINK_FLAGS_RELEASE )
set(ncurses_ncurses_libcurses++_EXE_LINK_FLAGS_RELEASE )
set(ncurses_ncurses_libcurses++_NO_SONAME_MODE_RELEASE FALSE)

# COMPOUND VARIABLES
set(ncurses_ncurses_libcurses++_LINKER_FLAGS_RELEASE
        $<$<STREQUAL:$<TARGET_PROPERTY:TYPE>,SHARED_LIBRARY>:${ncurses_ncurses_libcurses++_SHARED_LINK_FLAGS_RELEASE}>
        $<$<STREQUAL:$<TARGET_PROPERTY:TYPE>,MODULE_LIBRARY>:${ncurses_ncurses_libcurses++_SHARED_LINK_FLAGS_RELEASE}>
        $<$<STREQUAL:$<TARGET_PROPERTY:TYPE>,EXECUTABLE>:${ncurses_ncurses_libcurses++_EXE_LINK_FLAGS_RELEASE}>
)
set(ncurses_ncurses_libcurses++_COMPILE_OPTIONS_RELEASE
    "$<$<COMPILE_LANGUAGE:CXX>:${ncurses_ncurses_libcurses++_COMPILE_OPTIONS_CXX_RELEASE}>"
    "$<$<COMPILE_LANGUAGE:C>:${ncurses_ncurses_libcurses++_COMPILE_OPTIONS_C_RELEASE}>")
########### COMPONENT ncurses::tinfo VARIABLES ############################################

set(ncurses_ncurses_tinfo_INCLUDE_DIRS_RELEASE "${ncurses_PACKAGE_FOLDER_RELEASE}/include"
			"${ncurses_PACKAGE_FOLDER_RELEASE}/include/ncursesw")
set(ncurses_ncurses_tinfo_LIB_DIRS_RELEASE "${ncurses_PACKAGE_FOLDER_RELEASE}/lib")
set(ncurses_ncurses_tinfo_BIN_DIRS_RELEASE )
set(ncurses_ncurses_tinfo_LIBRARY_TYPE_RELEASE STATIC)
set(ncurses_ncurses_tinfo_IS_HOST_WINDOWS_RELEASE 0)
set(ncurses_ncurses_tinfo_RES_DIRS_RELEASE )
set(ncurses_ncurses_tinfo_DEFINITIONS_RELEASE )
set(ncurses_ncurses_tinfo_OBJECTS_RELEASE )
set(ncurses_ncurses_tinfo_COMPILE_DEFINITIONS_RELEASE )
set(ncurses_ncurses_tinfo_COMPILE_OPTIONS_C_RELEASE "")
set(ncurses_ncurses_tinfo_COMPILE_OPTIONS_CXX_RELEASE "")
set(ncurses_ncurses_tinfo_LIBS_RELEASE tinfow)
set(ncurses_ncurses_tinfo_SYSTEM_LIBS_RELEASE )
set(ncurses_ncurses_tinfo_FRAMEWORK_DIRS_RELEASE )
set(ncurses_ncurses_tinfo_FRAMEWORKS_RELEASE )
set(ncurses_ncurses_tinfo_DEPENDENCIES_RELEASE )
set(ncurses_ncurses_tinfo_SHARED_LINK_FLAGS_RELEASE )
set(ncurses_ncurses_tinfo_EXE_LINK_FLAGS_RELEASE )
set(ncurses_ncurses_tinfo_NO_SONAME_MODE_RELEASE FALSE)

# COMPOUND VARIABLES
set(ncurses_ncurses_tinfo_LINKER_FLAGS_RELEASE
        $<$<STREQUAL:$<TARGET_PROPERTY:TYPE>,SHARED_LIBRARY>:${ncurses_ncurses_tinfo_SHARED_LINK_FLAGS_RELEASE}>
        $<$<STREQUAL:$<TARGET_PROPERTY:TYPE>,MODULE_LIBRARY>:${ncurses_ncurses_tinfo_SHARED_LINK_FLAGS_RELEASE}>
        $<$<STREQUAL:$<TARGET_PROPERTY:TYPE>,EXECUTABLE>:${ncurses_ncurses_tinfo_EXE_LINK_FLAGS_RELEASE}>
)
set(ncurses_ncurses_tinfo_COMPILE_OPTIONS_RELEASE
    "$<$<COMPILE_LANGUAGE:CXX>:${ncurses_ncurses_tinfo_COMPILE_OPTIONS_CXX_RELEASE}>"
    "$<$<COMPILE_LANGUAGE:C>:${ncurses_ncurses_tinfo_COMPILE_OPTIONS_C_RELEASE}>")