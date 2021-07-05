#include "pch.h"
#include "CppUnitTest.h"
#include "../number-tools/numberTools.h"

using namespace Microsoft::VisualStudio::CppUnitTestFramework;

namespace UnitTestsemmateva18
{
	TEST_CLASS(UnitTestsemmateva18)
	{
	public:

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
		TEST_METHOD(ShouldReturnFalseIsArgumentIsOutOfRange)
		{
			bool result;
			int arg = 8;
			result = isNumberInRange(arg);
			Assert::AreEqual(false, result);
		}
		TEST_METHOD(ShouldNotReturnFalseIfArgumentIsOnTheBorder)
		{
			bool result;
			int arg = 20;
			result = isNumberInRange(arg);
			Assert::AreNotEqual(false, result);
		}
		TEST_METHOD(ShouldReturnSumOfNumbers)
		{
			int a = 15;
			int b = 3;
			int result = sumNumbers(a, b);
			Assert::AreEqual(18, result);
		}
		//TEST_METHOD(ShouldPassIfSchool)
	};
}
