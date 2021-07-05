// linked-list-library.cpp : Defines the functions for the static library.
//

#include "pch.h"
#include "linked-list-library.h"
#include <iostream>

using namespace std;

void appendNode(SINGLY_LINKED_LIST* list, int data)
{
	// node points to an object in memory of type NODE
	// "new" allocates memory in the HEAP with size sizeof(NODE)
	NODE* node = new NODE;
	node->data = data;  // Copy the data into the node

	// Check if the list is empty
	if (list->head == NULL) {
		// If the list is empty, then head and tail will point to this node
		list->head = node;
		list->tail = node;
	}
	else
	{
		// If the list is not empty, tail will point to the last element
		// Last element's "next" will point to our new node
		list->tail->next = node;
		list->tail = node;
	}
}

void displayList(SINGLY_LINKED_LIST* list)
{
	// node will point to the first element in the list (if any)
	NODE* node = list->head;

	// Loop through the elements until we meet the last element
	// The end of the list is reached when the last element's "next"
	// does not point to anything (i.e. it is NULL)
	while (node != NULL)
	{
		cout << node->data << endl;
		node = node->next; // node now points to the next element in the list
	}
}

void prependNode(SINGLY_LINKED_LIST* list, int data)
{
	// Allocate memory for the new node
	NODE* tmp = new NODE;
	// Store the data
	tmp->data = data;
	// Since we are putting our element on first position
	// tmp's next will point the old first element
	tmp->next = list->head;
	// The head will now point to our new element
	list->head = tmp;
}