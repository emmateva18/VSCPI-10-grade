
#include <iostream>
#include "IntNumbers.h"

using namespace std;

void foo(IntNumber num)
{

}

int main()
{
    try
    {
        IntNumber n1(10), n2(-5);
        IntNumber* n3 = new IntNumber;

        // foo(n1);

        cout << n1 + n2 << endl;
        cout << n1.operator+(n2) << endl;
        cout << n1 + 60 << endl;
        cout << n1.operator+(50) << endl;

        cout << n1++ <<", "<<n1.getValue() << endl;
        cout << ++n1 << n1.getValue() << endl;

        delete n3;
    }
    catch (std::invalid_argument& ex)
    {
        cout << "Exception!" << ex.what() << endl;
    }
}
