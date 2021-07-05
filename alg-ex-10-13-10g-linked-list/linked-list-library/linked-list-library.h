#pragma once
#include <iostream>

struct NODE
{
	int data = 0;
	NODE* next = NULL;
};

struct SINGLY_LINKED_LIST
{
	NODE* head = NULL;
	NODE* tail = NULL;
};

void appendNode(SINGLY_LINKED_LIST* list, int data);
void prependNode(SINGLY_LINKED_LIST* list, int data);
void displayList(SINGLY_LINKED_LIST* list);