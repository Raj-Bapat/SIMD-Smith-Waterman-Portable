if(EXISTS "/home/rbapat/SIMD-Smith-Waterman/src/highway-1.2.0/build/bit_set_test[1]_tests.cmake")
  include("/home/rbapat/SIMD-Smith-Waterman/src/highway-1.2.0/build/bit_set_test[1]_tests.cmake")
else()
  add_test(bit_set_test_NOT_BUILT bit_set_test_NOT_BUILT)
endif()
