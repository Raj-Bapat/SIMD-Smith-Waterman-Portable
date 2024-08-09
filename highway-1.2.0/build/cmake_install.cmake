# Install script for directory: /home/rbapat/SIMD-Smith-Waterman/src/highway-1.2.0

# Set the install prefix
if(NOT DEFINED CMAKE_INSTALL_PREFIX)
  set(CMAKE_INSTALL_PREFIX "/usr/local")
endif()
string(REGEX REPLACE "/$" "" CMAKE_INSTALL_PREFIX "${CMAKE_INSTALL_PREFIX}")

# Set the install configuration name.
if(NOT DEFINED CMAKE_INSTALL_CONFIG_NAME)
  if(BUILD_TYPE)
    string(REGEX REPLACE "^[^A-Za-z0-9_]+" ""
           CMAKE_INSTALL_CONFIG_NAME "${BUILD_TYPE}")
  else()
    set(CMAKE_INSTALL_CONFIG_NAME "Debug")
  endif()
  message(STATUS "Install configuration: \"${CMAKE_INSTALL_CONFIG_NAME}\"")
endif()

# Set the component getting installed.
if(NOT CMAKE_INSTALL_COMPONENT)
  if(COMPONENT)
    message(STATUS "Install component: \"${COMPONENT}\"")
    set(CMAKE_INSTALL_COMPONENT "${COMPONENT}")
  else()
    set(CMAKE_INSTALL_COMPONENT)
  endif()
endif()

# Install shared libraries without execute permission?
if(NOT DEFINED CMAKE_INSTALL_SO_NO_EXE)
  set(CMAKE_INSTALL_SO_NO_EXE "1")
endif()

# Is this installation the result of a crosscompile?
if(NOT DEFINED CMAKE_CROSSCOMPILING)
  set(CMAKE_CROSSCOMPILING "FALSE")
endif()

# Set default install directory permissions.
if(NOT DEFINED CMAKE_OBJDUMP)
  set(CMAKE_OBJDUMP "/usr/bin/objdump")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib" TYPE STATIC_LIBRARY FILES "/home/rbapat/SIMD-Smith-Waterman/src/highway-1.2.0/build/libhwy.a")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/hwy" TYPE FILE FILES "/home/rbapat/SIMD-Smith-Waterman/src/highway-1.2.0/hwy/abort.h")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/hwy" TYPE FILE FILES "/home/rbapat/SIMD-Smith-Waterman/src/highway-1.2.0/hwy/aligned_allocator.h")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/hwy" TYPE FILE FILES "/home/rbapat/SIMD-Smith-Waterman/src/highway-1.2.0/hwy/base.h")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/hwy" TYPE FILE FILES "/home/rbapat/SIMD-Smith-Waterman/src/highway-1.2.0/hwy/cache_control.h")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/hwy" TYPE FILE FILES "/home/rbapat/SIMD-Smith-Waterman/src/highway-1.2.0/hwy/detect_compiler_arch.h")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/hwy" TYPE FILE FILES "/home/rbapat/SIMD-Smith-Waterman/src/highway-1.2.0/hwy/detect_targets.h")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/hwy" TYPE FILE FILES "/home/rbapat/SIMD-Smith-Waterman/src/highway-1.2.0/hwy/foreach_target.h")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/hwy" TYPE FILE FILES "/home/rbapat/SIMD-Smith-Waterman/src/highway-1.2.0/hwy/highway_export.h")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/hwy" TYPE FILE FILES "/home/rbapat/SIMD-Smith-Waterman/src/highway-1.2.0/hwy/highway.h")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/hwy" TYPE FILE FILES "/home/rbapat/SIMD-Smith-Waterman/src/highway-1.2.0/hwy/nanobenchmark.h")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/hwy/ops" TYPE FILE FILES "/home/rbapat/SIMD-Smith-Waterman/src/highway-1.2.0/hwy/ops/arm_neon-inl.h")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/hwy/ops" TYPE FILE FILES "/home/rbapat/SIMD-Smith-Waterman/src/highway-1.2.0/hwy/ops/arm_sve-inl.h")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/hwy/ops" TYPE FILE FILES "/home/rbapat/SIMD-Smith-Waterman/src/highway-1.2.0/hwy/ops/emu128-inl.h")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/hwy/ops" TYPE FILE FILES "/home/rbapat/SIMD-Smith-Waterman/src/highway-1.2.0/hwy/ops/generic_ops-inl.h")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/hwy/ops" TYPE FILE FILES "/home/rbapat/SIMD-Smith-Waterman/src/highway-1.2.0/hwy/ops/inside-inl.h")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/hwy/ops" TYPE FILE FILES "/home/rbapat/SIMD-Smith-Waterman/src/highway-1.2.0/hwy/ops/ppc_vsx-inl.h")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/hwy/ops" TYPE FILE FILES "/home/rbapat/SIMD-Smith-Waterman/src/highway-1.2.0/hwy/ops/rvv-inl.h")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/hwy/ops" TYPE FILE FILES "/home/rbapat/SIMD-Smith-Waterman/src/highway-1.2.0/hwy/ops/scalar-inl.h")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/hwy/ops" TYPE FILE FILES "/home/rbapat/SIMD-Smith-Waterman/src/highway-1.2.0/hwy/ops/set_macros-inl.h")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/hwy/ops" TYPE FILE FILES "/home/rbapat/SIMD-Smith-Waterman/src/highway-1.2.0/hwy/ops/shared-inl.h")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/hwy/ops" TYPE FILE FILES "/home/rbapat/SIMD-Smith-Waterman/src/highway-1.2.0/hwy/ops/wasm_128-inl.h")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/hwy/ops" TYPE FILE FILES "/home/rbapat/SIMD-Smith-Waterman/src/highway-1.2.0/hwy/ops/x86_128-inl.h")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/hwy/ops" TYPE FILE FILES "/home/rbapat/SIMD-Smith-Waterman/src/highway-1.2.0/hwy/ops/x86_256-inl.h")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/hwy/ops" TYPE FILE FILES "/home/rbapat/SIMD-Smith-Waterman/src/highway-1.2.0/hwy/ops/x86_512-inl.h")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/hwy" TYPE FILE FILES "/home/rbapat/SIMD-Smith-Waterman/src/highway-1.2.0/hwy/per_target.h")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/hwy" TYPE FILE FILES "/home/rbapat/SIMD-Smith-Waterman/src/highway-1.2.0/hwy/print-inl.h")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/hwy" TYPE FILE FILES "/home/rbapat/SIMD-Smith-Waterman/src/highway-1.2.0/hwy/print.h")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/hwy" TYPE FILE FILES "/home/rbapat/SIMD-Smith-Waterman/src/highway-1.2.0/hwy/profiler.h")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/hwy" TYPE FILE FILES "/home/rbapat/SIMD-Smith-Waterman/src/highway-1.2.0/hwy/robust_statistics.h")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/hwy" TYPE FILE FILES "/home/rbapat/SIMD-Smith-Waterman/src/highway-1.2.0/hwy/targets.h")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/hwy" TYPE FILE FILES "/home/rbapat/SIMD-Smith-Waterman/src/highway-1.2.0/hwy/timer-inl.h")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/hwy" TYPE FILE FILES "/home/rbapat/SIMD-Smith-Waterman/src/highway-1.2.0/hwy/timer.h")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib" TYPE STATIC_LIBRARY FILES "/home/rbapat/SIMD-Smith-Waterman/src/highway-1.2.0/build/libhwy_contrib.a")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/hwy/contrib/bit_pack" TYPE FILE FILES "/home/rbapat/SIMD-Smith-Waterman/src/highway-1.2.0/hwy/contrib/bit_pack/bit_pack-inl.h")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/hwy/contrib/dot" TYPE FILE FILES "/home/rbapat/SIMD-Smith-Waterman/src/highway-1.2.0/hwy/contrib/dot/dot-inl.h")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/hwy/contrib/image" TYPE FILE FILES "/home/rbapat/SIMD-Smith-Waterman/src/highway-1.2.0/hwy/contrib/image/image.h")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/hwy/contrib/math" TYPE FILE FILES "/home/rbapat/SIMD-Smith-Waterman/src/highway-1.2.0/hwy/contrib/math/math-inl.h")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/hwy/contrib/matvec" TYPE FILE FILES "/home/rbapat/SIMD-Smith-Waterman/src/highway-1.2.0/hwy/contrib/matvec/matvec-inl.h")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/hwy/contrib/random" TYPE FILE FILES "/home/rbapat/SIMD-Smith-Waterman/src/highway-1.2.0/hwy/contrib/random/random-inl.h")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/hwy/contrib/sort" TYPE FILE FILES "/home/rbapat/SIMD-Smith-Waterman/src/highway-1.2.0/hwy/contrib/sort/order.h")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/hwy/contrib/sort" TYPE FILE FILES "/home/rbapat/SIMD-Smith-Waterman/src/highway-1.2.0/hwy/contrib/sort/shared-inl.h")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/hwy/contrib/sort" TYPE FILE FILES "/home/rbapat/SIMD-Smith-Waterman/src/highway-1.2.0/hwy/contrib/sort/sorting_networks-inl.h")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/hwy/contrib/sort" TYPE FILE FILES "/home/rbapat/SIMD-Smith-Waterman/src/highway-1.2.0/hwy/contrib/sort/traits-inl.h")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/hwy/contrib/sort" TYPE FILE FILES "/home/rbapat/SIMD-Smith-Waterman/src/highway-1.2.0/hwy/contrib/sort/traits128-inl.h")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/hwy/contrib/sort" TYPE FILE FILES "/home/rbapat/SIMD-Smith-Waterman/src/highway-1.2.0/hwy/contrib/sort/vqsort-inl.h")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/hwy/contrib/sort" TYPE FILE FILES "/home/rbapat/SIMD-Smith-Waterman/src/highway-1.2.0/hwy/contrib/sort/vqsort.h")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/hwy/contrib/thread_pool" TYPE FILE FILES "/home/rbapat/SIMD-Smith-Waterman/src/highway-1.2.0/hwy/contrib/thread_pool/futex.h")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/hwy/contrib/thread_pool" TYPE FILE FILES "/home/rbapat/SIMD-Smith-Waterman/src/highway-1.2.0/hwy/contrib/thread_pool/thread_pool.h")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/hwy/contrib/thread_pool" TYPE FILE FILES "/home/rbapat/SIMD-Smith-Waterman/src/highway-1.2.0/hwy/contrib/thread_pool/topology.h")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/hwy/contrib/algo" TYPE FILE FILES "/home/rbapat/SIMD-Smith-Waterman/src/highway-1.2.0/hwy/contrib/algo/copy-inl.h")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/hwy/contrib/algo" TYPE FILE FILES "/home/rbapat/SIMD-Smith-Waterman/src/highway-1.2.0/hwy/contrib/algo/find-inl.h")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/hwy/contrib/algo" TYPE FILE FILES "/home/rbapat/SIMD-Smith-Waterman/src/highway-1.2.0/hwy/contrib/algo/transform-inl.h")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/hwy/contrib/unroller" TYPE FILE FILES "/home/rbapat/SIMD-Smith-Waterman/src/highway-1.2.0/hwy/contrib/unroller/unroller-inl.h")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib" TYPE STATIC_LIBRARY FILES "/home/rbapat/SIMD-Smith-Waterman/src/highway-1.2.0/build/libhwy_test.a")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/hwy/tests" TYPE FILE FILES "/home/rbapat/SIMD-Smith-Waterman/src/highway-1.2.0/hwy/tests/hwy_gtest.h")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/hwy/tests" TYPE FILE FILES "/home/rbapat/SIMD-Smith-Waterman/src/highway-1.2.0/hwy/tests/test_util-inl.h")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/hwy/tests" TYPE FILE FILES "/home/rbapat/SIMD-Smith-Waterman/src/highway-1.2.0/hwy/tests/test_util.h")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/pkgconfig" TYPE FILE FILES "/home/rbapat/SIMD-Smith-Waterman/src/highway-1.2.0/build/libhwy.pc")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/pkgconfig" TYPE FILE FILES "/home/rbapat/SIMD-Smith-Waterman/src/highway-1.2.0/build/libhwy-contrib.pc")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/pkgconfig" TYPE FILE FILES "/home/rbapat/SIMD-Smith-Waterman/src/highway-1.2.0/build/libhwy-test.pc")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/cmake/hwy" TYPE FILE FILES "/home/rbapat/SIMD-Smith-Waterman/src/highway-1.2.0/build/hwy-config-version.cmake")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  if(EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/cmake/hwy/hwy-config.cmake")
    file(DIFFERENT EXPORT_FILE_CHANGED FILES
         "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/cmake/hwy/hwy-config.cmake"
         "/home/rbapat/SIMD-Smith-Waterman/src/highway-1.2.0/build/CMakeFiles/Export/lib/cmake/hwy/hwy-config.cmake")
    if(EXPORT_FILE_CHANGED)
      file(GLOB OLD_CONFIG_FILES "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/cmake/hwy/hwy-config-*.cmake")
      if(OLD_CONFIG_FILES)
        message(STATUS "Old export file \"$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/cmake/hwy/hwy-config.cmake\" will be replaced.  Removing files [${OLD_CONFIG_FILES}].")
        file(REMOVE ${OLD_CONFIG_FILES})
      endif()
    endif()
  endif()
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/cmake/hwy" TYPE FILE FILES "/home/rbapat/SIMD-Smith-Waterman/src/highway-1.2.0/build/CMakeFiles/Export/lib/cmake/hwy/hwy-config.cmake")
  if("${CMAKE_INSTALL_CONFIG_NAME}" MATCHES "^([Dd][Ee][Bb][Uu][Gg])$")
    file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/cmake/hwy" TYPE FILE FILES "/home/rbapat/SIMD-Smith-Waterman/src/highway-1.2.0/build/CMakeFiles/Export/lib/cmake/hwy/hwy-config-debug.cmake")
  endif()
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for each subdirectory.

endif()

if(CMAKE_INSTALL_COMPONENT)
  set(CMAKE_INSTALL_MANIFEST "install_manifest_${CMAKE_INSTALL_COMPONENT}.txt")
else()
  set(CMAKE_INSTALL_MANIFEST "install_manifest.txt")
endif()

string(REPLACE ";" "\n" CMAKE_INSTALL_MANIFEST_CONTENT
       "${CMAKE_INSTALL_MANIFEST_FILES}")
file(WRITE "/home/rbapat/SIMD-Smith-Waterman/src/highway-1.2.0/build/${CMAKE_INSTALL_MANIFEST}"
     "${CMAKE_INSTALL_MANIFEST_CONTENT}")
