#include <iostream>
#include <string>
#include <vector>
#include <fstream>
#include "numberTools.h"

using namespace std;

int main()
{
	// (10; 20]
	// 14 => true
	// 8  => false
	// 10 => false
	// 20 => true
	// 21 => false
	int result = isNumberInRange(14);
	if (result != true)
	{
		cout << "Test failed" << endl;
	}

	result = isNumberInRange(20);
	if (result != true)
	{
		cout << "Test failed" << endl;
	}

}
