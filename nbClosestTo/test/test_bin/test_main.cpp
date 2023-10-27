#include <criterion/criterion.h>
#include <criterion/new/assert.h>
#include <criterion/redirect.h>
#include <criterion/logging.h>
#include <criterion/parameterized.h>
#include <iostream>
#include <typeinfo>
// #include <signal.h>
#include <array>
#include <list>

#include "../test_source/test_nbClosestTo.cpp"

void    redirect_all_stdout(void)
{
    cr_redirect_stdout();
    cr_redirect_stderr();
}


Test(nbClosestTo, Test_simple_case)//, .init = redirect_all_stdout)
{
    int target = 0;

    int arr[] = {1, -2, -8, 4, 5};
    int size = sizeof(arr) / sizeof(arr[0]);
    cr_assert(nbClosestTo(arr, size, target) == 1);

    // Using a vector
    std::vector<int> numbers = {1, -2, -8, 4, 5};
    cr_assert(nbClosestTo(numbers, target) == 1);

    std::list<int> listTemp = {1, -2, -8, 4, 5};
    cr_assert(nbClosestTo(listTemp, target) == 1);
}

Test(nbClosestTo, Test_case_only_negative_numbers)//, .init = redirect_all_stdout)
{
    int target = 0;

    int arr[] = {-12, -5, -137};
    int size = sizeof(arr) / sizeof(arr[0]);
    cr_assert(nbClosestTo(arr, size, target) == -5);

    // Using a vector
    std::vector<int> numbers = {-12, -5, -137};
    cr_assert(nbClosestTo(numbers, target) == -5);

    std::list<int> listTemp = {-12, -5, -137};
    cr_assert(nbClosestTo(listTemp, target) == -5);
}

Test(nbClosestTo, Test_case_right_temperature)//, .init = redirect_all_stdout)
{
    int target = 0;

    int arr[] = {42, -5, 12, 21, 5, 24};
    int size = sizeof(arr) / sizeof(arr[0]);
    cr_assert(nbClosestTo(arr, size, target) == 5);

    // Using a vector
    std::vector<int> numbers = {42, -5, 12, 21, 5, 24};
    cr_assert(nbClosestTo(numbers, target) == 5);

    std::list<int> listTemp = {42, -5, 12, 21, 5, 24};
    cr_assert(nbClosestTo(listTemp, target) == 5);
}

Test(nbClosestTo, Test_case_right_temperature2)//, .init = redirect_all_stdout)
{
    int target = 0;

    int arr[] = {42, 5, 12, 21, -5, 24};
    int size = sizeof(arr) / sizeof(arr[0]);
    cr_assert(nbClosestTo(arr, size, target) == 5);

    // Using a vector
    std::vector<int> numbers = {42, 5, 12, 21, -5, 24};
    cr_assert(nbClosestTo(numbers, target) == 5);

    std::list<int> listTemp = {42, 5, 12, 21, -5, 24};
    cr_assert(nbClosestTo(listTemp, target) == 5);
}

Test(nbClosestTo, Test_case_complexe)//, .init = redirect_all_stdout)
{
    int target = 0;

    int arr[] = {-5, -4, -2, 12, -40, 4, 2, 18, 11, 5};
    int size = sizeof(arr) / sizeof(arr[0]);
    cr_assert(nbClosestTo(arr, size, target) == 2);

    // Using a vector
    std::vector<int> numbers = {-5, -4, -2, 12, -40, 4, 2, 18, 11, 5};
    cr_assert(nbClosestTo(numbers, target) == 2);

    std::list<int> listTemp = {-5, -4, -2, 12, -40, 4, 2, 18, 11, 5};
    cr_assert(nbClosestTo(listTemp, target) == 2);
}

Test(nbClosestTo, Test_case_no_Temperature)//, .init = redirect_all_stdout)
{
    int target = 0;

    int arr[] = {};
    int size = sizeof(arr) / sizeof(arr[0]);
    cr_assert(nbClosestTo(arr, size, target) == 0);

    // Using a vector
    std::vector<int> numbers = {};
    cr_assert(nbClosestTo(numbers, target) == 0);

    std::list<int> listTemp = {};
    cr_assert(nbClosestTo(listTemp, target) == 0);
}