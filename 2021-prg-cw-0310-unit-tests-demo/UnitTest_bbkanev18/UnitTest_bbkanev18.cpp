#include "pch.h"
#include "CppUnitTest.h"
#include "../number-tools/numberTools.h"
using namespace Microsoft::VisualStudio::CppUnitTestFramework;

namespace UnitTestbbkanev18
{
	TEST_CLASS(UnitTestbbkanev18)
	{
	public:
		
		// (10; 20]
		// 14 => true
		// 8  => false
		// 10 => false
		// 20 => true
		// 21 => false
		TEST_METHOD(ShouldReturnTrueIfArgumentIsInRange)
		{
			// AAA

			// Arrange
			bool result;
			int argument = 14;


			// Act
			result = isNumberInRange(argument);


			// Assert
			Assert::AreEqual(true, result);
			

		}

		TEST_METHOD(ShouldReturnFalseIfArgumentIsNotInRange)
		{
			// AAA

			// Arrange
			bool result;
			int argument = 10;


			// Act
			result = isNumberInRange(argument);


			// Assert
			Assert::AreEqual(false, result);

		}

		TEST_METHOD(ShouldReturnSumOfNumbers) {
			// Arrange
			int a = 15;
			int b = 3;


			// Act
			int result = sumNumbers(a, b);


			// Assert
			Assert::AreEqual(18, result);
		}
	};
}
