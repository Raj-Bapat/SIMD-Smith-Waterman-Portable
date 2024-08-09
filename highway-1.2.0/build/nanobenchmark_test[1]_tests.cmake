add_test( NanobenchmarkTest.RunTest /home/rbapat/SIMD-Smith-Waterman/src/highway-1.2.0/build/tests/nanobenchmark_test [==[--gtest_filter=NanobenchmarkTest.RunTest]==] --gtest_also_run_disabled_tests)
set_tests_properties( NanobenchmarkTest.RunTest PROPERTIES WORKING_DIRECTORY /home/rbapat/SIMD-Smith-Waterman/src/highway-1.2.0/build SKIP_REGULAR_EXPRESSION [==[\[  SKIPPED \]]==])
set( nanobenchmark_test_TESTS NanobenchmarkTest.RunTest)
