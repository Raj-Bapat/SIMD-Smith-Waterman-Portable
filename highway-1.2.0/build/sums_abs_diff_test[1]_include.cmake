if(EXISTS "/home/rbapat/SIMD-Smith-Waterman/src/highway-1.2.0/build/sums_abs_diff_test[1]_tests.cmake")
  include("/home/rbapat/SIMD-Smith-Waterman/src/highway-1.2.0/build/sums_abs_diff_test[1]_tests.cmake")
else()
  add_test(sums_abs_diff_test_NOT_BUILT sums_abs_diff_test_NOT_BUILT)
endif()
