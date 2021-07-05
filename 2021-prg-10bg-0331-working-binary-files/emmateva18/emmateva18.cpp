// emmateva18.cpp : This file contains the 'main' function. Program execution begins and ends there.
//

#include <iostream>
#include <fstream>
#include <vector>
using namespace std;
bool writeArrayInFile(int* arr, int sizeInBytes)
{
	ofstream file;
	file.open("array.bin", ios::out | ios::binary | ios::trunc);
	if (file.is_open())
	{
		if (file.write((const char*)arr, sizeInBytes))
		{
			return true;

		}
	}
	else
	{
		return false;
	}
}

int main()
{
	int arr[6] = { 1,2,3,4,5,6 };
	vector<int>numbers;
	if (writeArrayInFile(arr, sizeof(arr)))
	{
		ifstream file("array.bin");
		if (file.is_open())
		{
			char buffer[4];
			file.read((char*)buffer, 4);
			if (file.read((char*)buffer, sizeof(buffer)))
			{
				// hex to dec
				// 0x01 == 1
				// 0x00 == 0
				if (buffer[0] == 0x01 && buffer[1] == 0x00)
				{

				}
			}
		}
	}
}

// Run program: Ctrl + F5 or Debug > Start Without Debugging menu
// Debug program: F5 or Debug > Start Debugging menu

// Tips for Getting Started: 
//   1. Use the Solution Explorer window to add/manage files
//   2. Use the Team Explorer window to connect to source control
//   3. Use the Output window to see build output and other messages
//   4. Use the Error List window to view errors
//   5. Go to Project > Add New Item to create new code files, or Project > Add Existing Item to add existing code files to the project
//   6. In the future, to open this project again, go to File > Open > Project and select the .sln file
