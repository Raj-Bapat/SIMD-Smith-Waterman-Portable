if(EXISTS "/home/rbapat/SIMD-Smith-Waterman/src/highway-1.2.0/build/dup128_vec_test[1]_tests.cmake")
  include("/home/rbapat/SIMD-Smith-Waterman/src/highway-1.2.0/build/dup128_vec_test[1]_tests.cmake")
else()
  add_test(dup128_vec_test_NOT_BUILT dup128_vec_test_NOT_BUILT)
endif()
