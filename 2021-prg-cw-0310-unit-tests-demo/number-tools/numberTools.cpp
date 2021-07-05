#include "numberTools.h"

bool isNumberInRange(int number)
{
	// (10; 20]
	// 14 => true
	// 8  => false
	// 10 => false
	// 20 => true
	// 21 => false
	return number > 10 && number <= 20;
}

int sumNumbers(int a, int b)
{
	return a + b;
}