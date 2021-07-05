#include "pch.h"
#include "CppUnitTest.h"
#include "../number-tools/numberTools.h"

using namespace Microsoft::VisualStudio::CppUnitTestFramework;

namespace UnitTestszoyordanva18
{
	TEST_CLASS(UnitTestszoyordanva18)
	{
	public:
		
		TEST_METHOD(TestMethod1)
		{
			bool result;
			result=isNumberInRange(17);
		}
	};
}
