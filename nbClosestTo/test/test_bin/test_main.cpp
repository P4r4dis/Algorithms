#include <criterion/criterion.h>
#include <criterion/new/assert.h>
#include <criterion/redirect.h>
#include <criterion/logging.h>
#include <criterion/parameterized.h>
// #include <signal.h>

void    redirect_all_stdout(void)
{
    cr_redirect_stdout();
    cr_redirect_stderr();
}

Test(Test, Test_name)//, .init = redirect_all_stdout)
{
    int i = 0;
    cr_assert(i == 0);
}