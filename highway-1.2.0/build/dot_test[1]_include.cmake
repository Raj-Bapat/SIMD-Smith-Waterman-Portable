if(EXISTS "/home/rbapat/SIMD-Smith-Waterman/src/highway-1.2.0/build/dot_test[1]_tests.cmake")
  include("/home/rbapat/SIMD-Smith-Waterman/src/highway-1.2.0/build/dot_test[1]_tests.cmake")
else()
  add_test(dot_test_NOT_BUILT dot_test_NOT_BUILT)
endif()
