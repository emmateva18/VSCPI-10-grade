#include "pch.h"
#include "CppUnitTest.h"
#include "../number-tools/numberTools.h"

using namespace Microsoft::VisualStudio::CppUnitTestFramework;

namespace UnitTestssgdiomov18
{
	TEST_CLASS(UnitTestssgdiomov18)
	{
	public:
		
		TEST_METHOD(ShouldReturnTrueIfArgumentIsInRange)
		{
			bool result;
			int argument = 17;
			int result = isNumberInRange(17);
			Assert::AreEqual(true, result);
		}
	};
}
