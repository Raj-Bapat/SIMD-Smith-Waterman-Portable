add_test( [==[TupleTestGroup/TupleTest.TestAllCreate/AVX2#GetParam()=512]==] /home/rbapat/SIMD-Smith-Waterman/src/highway-1.2.0/build/tests/tuple_test [==[--gtest_filter=TupleTestGroup/TupleTest.TestAllCreate/AVX2]==] --gtest_also_run_disabled_tests)
set_tests_properties( [==[TupleTestGroup/TupleTest.TestAllCreate/AVX2#GetParam()=512]==] PROPERTIES WORKING_DIRECTORY /home/rbapat/SIMD-Smith-Waterman/src/highway-1.2.0/build SKIP_REGULAR_EXPRESSION [==[\[  SKIPPED \]]==])
add_test( [==[TupleTestGroup/TupleTest.TestAllCreate/SSE4#GetParam()=2048]==] /home/rbapat/SIMD-Smith-Waterman/src/highway-1.2.0/build/tests/tuple_test [==[--gtest_filter=TupleTestGroup/TupleTest.TestAllCreate/SSE4]==] --gtest_also_run_disabled_tests)
set_tests_properties( [==[TupleTestGroup/TupleTest.TestAllCreate/SSE4#GetParam()=2048]==] PROPERTIES WORKING_DIRECTORY /home/rbapat/SIMD-Smith-Waterman/src/highway-1.2.0/build SKIP_REGULAR_EXPRESSION [==[\[  SKIPPED \]]==])
add_test( [==[TupleTestGroup/TupleTest.TestAllCreate/SSSE3#GetParam()=4096]==] /home/rbapat/SIMD-Smith-Waterman/src/highway-1.2.0/build/tests/tuple_test [==[--gtest_filter=TupleTestGroup/TupleTest.TestAllCreate/SSSE3]==] --gtest_also_run_disabled_tests)
set_tests_properties( [==[TupleTestGroup/TupleTest.TestAllCreate/SSSE3#GetParam()=4096]==] PROPERTIES WORKING_DIRECTORY /home/rbapat/SIMD-Smith-Waterman/src/highway-1.2.0/build SKIP_REGULAR_EXPRESSION [==[\[  SKIPPED \]]==])
add_test( [==[TupleTestGroup/TupleTest.TestAllCreate/SSE2#GetParam()=16384]==] /home/rbapat/SIMD-Smith-Waterman/src/highway-1.2.0/build/tests/tuple_test [==[--gtest_filter=TupleTestGroup/TupleTest.TestAllCreate/SSE2]==] --gtest_also_run_disabled_tests)
set_tests_properties( [==[TupleTestGroup/TupleTest.TestAllCreate/SSE2#GetParam()=16384]==] PROPERTIES WORKING_DIRECTORY /home/rbapat/SIMD-Smith-Waterman/src/highway-1.2.0/build SKIP_REGULAR_EXPRESSION [==[\[  SKIPPED \]]==])
add_test( [==[TupleTestGroup/TupleTest.TestAllCreate/SCALAR#GetParam()=4611686018427387904]==] /home/rbapat/SIMD-Smith-Waterman/src/highway-1.2.0/build/tests/tuple_test [==[--gtest_filter=TupleTestGroup/TupleTest.TestAllCreate/SCALAR]==] --gtest_also_run_disabled_tests)
set_tests_properties( [==[TupleTestGroup/TupleTest.TestAllCreate/SCALAR#GetParam()=4611686018427387904]==] PROPERTIES WORKING_DIRECTORY /home/rbapat/SIMD-Smith-Waterman/src/highway-1.2.0/build SKIP_REGULAR_EXPRESSION [==[\[  SKIPPED \]]==])
set( tuple_test_TESTS [==[TupleTestGroup/TupleTest.TestAllCreate/AVX2#GetParam()=512]==] [==[TupleTestGroup/TupleTest.TestAllCreate/SSE4#GetParam()=2048]==] [==[TupleTestGroup/TupleTest.TestAllCreate/SSSE3#GetParam()=4096]==] [==[TupleTestGroup/TupleTest.TestAllCreate/SSE2#GetParam()=16384]==] [==[TupleTestGroup/TupleTest.TestAllCreate/SCALAR#GetParam()=4611686018427387904]==])
