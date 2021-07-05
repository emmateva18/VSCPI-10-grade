#pragma once

struct STUDENT
{
	char firstName[20];
	char lastName[20];
	int age;
	int grade;

	char* getFullName();
};