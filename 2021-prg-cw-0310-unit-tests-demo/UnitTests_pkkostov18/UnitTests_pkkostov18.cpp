#include "pch.h"
#include "CppUnitTest.h"
#include "../number-tools/numberTools.h"

using namespace Microsoft::VisualStudio::CppUnitTestFramework;

namespace UnitTestspkkostov18
{
	TEST_CLASS(UnitTestspkkostov18)
	{
	public:
		
		TEST_METHOD(ShouldReturnTrueIfNumberIsInRange)
		{
			//AAA

			//Arrange
			bool result;
			int argument = 14;

			//Act
			result = isNumberInRange(argument);

			//Assert
			Assert::AreEqual(true, result);
		}

		TEST_METHOD(ShouldReturnFalseIfNumberIsOutOfRange)
		{
			//AAA

			//Arrange
			bool result;
			int argument = 5;

			//Act
			result = isNumberInRange(argument);

			//Assert
			Assert::AreEqual(false, result);
		}

		TEST_METHOD(ShouldReturnFalseIfNumberIsOutOfRange1)
		{
			//AAA

			//Arrange
			bool result;
			int argument = 10;

			//Act
			result = isNumberInRange(argument);

			//Assert
			Assert::AreEqual(false, result);
		}

		TEST_METHOD(ShouldReturnTrueIfNumberIsInRange1)
		{
			//AAA

			//Arrange
			bool result;
			int argument = 20;

			//Act
			result = isNumberInRange(argument);

			//Assert
			Assert::AreEqual(true, result);
		}
	};
}
