if(EXISTS "/home/rbapat/SIMD-Smith-Waterman/src/highway-1.2.0/build/test_util_test[1]_tests.cmake")
  include("/home/rbapat/SIMD-Smith-Waterman/src/highway-1.2.0/build/test_util_test[1]_tests.cmake")
else()
  add_test(test_util_test_NOT_BUILT test_util_test_NOT_BUILT)
endif()
