if(EXISTS "/home/rbapat/SIMD-Smith-Waterman/src/highway-1.2.0/build/shuffle4_test[1]_tests.cmake")
  include("/home/rbapat/SIMD-Smith-Waterman/src/highway-1.2.0/build/shuffle4_test[1]_tests.cmake")
else()
  add_test(shuffle4_test_NOT_BUILT shuffle4_test_NOT_BUILT)
endif()
