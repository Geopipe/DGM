# - Config file for the DGM package
# It defines the following variables
#  DGM_INCLUDE_DIRS - include directories for DGM
#  DGM_LIBRARIES    - libraries to link against
 
# Compute paths
get_filename_component(DGM_CMAKE_DIR ${CMAKE_CURRENT_LIST_FILE} PATH)
set(DGM_INCLUDE_DIRS ${DGM_CMAKE_DIR}/include)
 
# Our library dependencies (contains definitions for IMPORTED targets)
if(NOT TARGET DGM AND NOT DGM_BINARY_DIR)
  include(${DGM_CMAKE_DIR}/lib/DGMTargets.cmake)
endif()
 
# These are IMPORTED targets created by DGMTargets.cmake
set(DGM_LIBRARIES DGM FEX VIS)
