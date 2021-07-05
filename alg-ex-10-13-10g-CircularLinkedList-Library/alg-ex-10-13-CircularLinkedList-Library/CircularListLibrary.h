#pragma once
#include <iostream>

struct NODE
{
	int data;
	struct NODE* next;
};
void displayList(NODE* tail);