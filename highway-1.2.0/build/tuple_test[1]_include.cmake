if(EXISTS "/home/rbapat/SIMD-Smith-Waterman/src/highway-1.2.0/build/tuple_test[1]_tests.cmake")
  include("/home/rbapat/SIMD-Smith-Waterman/src/highway-1.2.0/build/tuple_test[1]_tests.cmake")
else()
  add_test(tuple_test_NOT_BUILT tuple_test_NOT_BUILT)
endif()
