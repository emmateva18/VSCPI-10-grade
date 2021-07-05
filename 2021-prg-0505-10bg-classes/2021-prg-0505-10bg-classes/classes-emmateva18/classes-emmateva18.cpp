
#include <iostream>
#include <vector>
#include <string>
#include "intNumber.h"

void invoke()
{
    IntNumber n1(6);
    IntNumber* n2 = new IntNumber(12);
    delete n2;
}

int sum(int left, int right)
{
    return left + right;
}

int main()
{
    IntNumber n1(10), n2(5);

    std::cout << "n1 + n2 = " << (n1 + n2) << std::endl;
    std::cout << "n1 + 20 = " << (n1 + 20) << std::endl;
    std::cout << "n1.operator+(30) = " << (n1.operator+(30)) << std::endl;

    //To Do: implement operator overloading for
    // *, /, -, %

    std::cout << "n1 * n2 = " << (n1 * n2) << std::endl;
    std::cout << "n1 / n2 = " << (n1 / n2) << std::endl;
    std::cout << "n1 - n2 = " << (n1 - n2) << std::endl;
    std::cout << "n1 % n2 = " << (n1 % n2) << std::endl;


    if (n1 > n2)
    {
        std::cout << "n1 > n2" << std::endl;
    }
    else
    {
        std::cout << "n1 < n2" << std::endl;
    }

    if (n1 >= n2)
    {
        std::cout << "n1 >= n2" << std::endl;
    }
    else
    {
        std::cout << "n1 <= n2" << std::endl;
    }

    if (n1 != n2)
    {
        std::cout << "n1 != n2" << std::endl;
    }

    // To Do: Implement: >=, <=, !=
    // ++, -- (prefix / podtfix form)
    //++n1 => prefix form
    //n1++ => postfix form

    std::cout << (!n1) << std::endl;
    n1.setValue(0);
    std::cout << (!n1) << std::endl;
}