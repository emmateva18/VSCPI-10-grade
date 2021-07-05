#pragma once
#include <iostream>
#include <string>

bool doesFileExist(std::string fileName);
bool createFile(std::string fileName);
int deleteFile(std::string fileName);
int renameFile(std::string oldFileName, std::string newFileName);
bool copyTextFile(std::string sourceFileName, std::string destinationFileName);