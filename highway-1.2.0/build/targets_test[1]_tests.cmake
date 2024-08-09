add_test( HwyTargetsTest.ChosenTargetOrderTest /home/rbapat/SIMD-Smith-Waterman/src/highway-1.2.0/build/tests/targets_test [==[--gtest_filter=HwyTargetsTest.ChosenTargetOrderTest]==] --gtest_also_run_disabled_tests)
set_tests_properties( HwyTargetsTest.ChosenTargetOrderTest PROPERTIES WORKING_DIRECTORY /home/rbapat/SIMD-Smith-Waterman/src/highway-1.2.0/build SKIP_REGULAR_EXPRESSION [==[\[  SKIPPED \]]==])
add_test( HwyTargetsTest.DisabledTargetsTest /home/rbapat/SIMD-Smith-Waterman/src/highway-1.2.0/build/tests/targets_test [==[--gtest_filter=HwyTargetsTest.DisabledTargetsTest]==] --gtest_also_run_disabled_tests)
set_tests_properties( HwyTargetsTest.DisabledTargetsTest PROPERTIES WORKING_DIRECTORY /home/rbapat/SIMD-Smith-Waterman/src/highway-1.2.0/build SKIP_REGULAR_EXPRESSION [==[\[  SKIPPED \]]==])
set( targets_test_TESTS HwyTargetsTest.ChosenTargetOrderTest HwyTargetsTest.DisabledTargetsTest)
