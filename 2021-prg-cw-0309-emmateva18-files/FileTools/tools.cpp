#include <iostream>
#include <string>
#include <vector>
#include <fstream>
#include <stdio.h>
#include <errno.h>
#include "tools.h"
using namespace std;

bool doesFileExist(string fileName)
{
	ifstream file;

	file.open(fileName, ios::in | ios::_Nocreate);

	if (file.is_open())
	{
		file.close();
		return 1;
	}
	return 0;
}


bool createFile(string fileName)
{
	ofstream file;
	file.open(fileName, ios::out);
	if (file.is_open())
	{
		file.close();
		return 1;
	}

	return 0;
}

int deleteFile(std::string fileName)
{
	int res = remove(fileName.c_str());

	if (!doesFileExist(fileName) && res != 0)
	{
		return errno;
	}
	return 0;
}

int renameFile(string oldName, string newName)
{
	int res = rename(oldName.c_str(), newName.c_str());
	if (res != 0)
	{
		return errno;
	}
	return 0;
}

bool copyTextFile(string sourceFile, string destFile)
{
	ifstream srcFile(sourceFile);
	ofstream dstFile(destFile, ios::out | ios::trunc);

	string line;

	if (srcFile.is_open() && dstFile.is_open())
	{
		while (getline(srcFile, line))
		{
			dstFile << line << endl;
		}

		srcFile.close();
		dstFile.close();
		return 1;
	}

	srcFile.close();
	dstFile.close();
	return 0;
}