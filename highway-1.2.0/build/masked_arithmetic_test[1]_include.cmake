if(EXISTS "/home/rbapat/SIMD-Smith-Waterman/src/highway-1.2.0/build/masked_arithmetic_test[1]_tests.cmake")
  include("/home/rbapat/SIMD-Smith-Waterman/src/highway-1.2.0/build/masked_arithmetic_test[1]_tests.cmake")
else()
  add_test(masked_arithmetic_test_NOT_BUILT masked_arithmetic_test_NOT_BUILT)
endif()
