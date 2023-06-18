# -------------------------------------------------------------------------------------------------
# ccache
# -------------------------------------------------------------------------------------------------
# use ccache if available
find_program(CCACHE_PROGRAM ccache)
if(CCACHE_PROGRAM)
    message(STATUS "Found ccache in ${CCACHE_PROGRAM}")
    set_property(GLOBAL PROPERTY RULE_LAUNCH_COMPILE "${CCACHE_PROGRAM}")
else()
    message(STATUS "Install ccache to speed up compilation")
    message(STATUS "-- sudo apt install ccache")
endif()