#include "pch.h"
#include "CppUnitTest.h"
#include "../number-tools/numberTools.h"
using namespace Microsoft::VisualStudio::CppUnitTestFramework;

namespace UnitTestsSMPonchev18
{
	TEST_CLASS(UnitTestsSMPonchev18)
	{
	public:
			// 14 => true
			// 8  => false
			// 10 => false
			// 20 => true
			// 21 =>false
		TEST_METHOD(ShouldReturnTrueIfArgumentIsInRange)
		{
			// AAA

			// Arrange
			bool result;
			int argument = 14;

			// Act
			result=isNumberInRange(14);

			// Assert
			Assert::AreEqual(true, result);
		}
		TEST_METHOD(ShouldReturnFalseIfArgumentIsOutOfRange)
		{
			// AAA

			// Arrange
			bool result;
			int argument = 8;

			// Act
			result = isNumberInRange(argument);

			// Assert
			Assert::AreEqual(false, result);
		}
	};
}
