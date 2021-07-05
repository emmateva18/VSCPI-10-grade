// alg-ex-10-13-CircularLinkedList-Library.cpp : Defines the functions for the static library.
//
#include <iostream>
#include "pch.h"
#include "CircularListLibrary.h"
using namespace std;

void displayList(NODE* tail) 
{
	struct NODE* p;

	// If list is empty, return.
	if (tail == NULL)
	{
		cout << "Circular linked List is empty." << endl;
		return;
	}

	p = tail->next; // Point to the first NODE in the list.

	// Traverse the list starting from first node until first node is visited again
	do
	{
		cout << p->data << "==>";
		p = p->next;
	} while (p != tail->next);

	if (p == tail->next)
	{
		cout << p->data;
	}

}
NODE* insertNode(NODE* tail, int data)
{
	if (tail != NULL) {
		return tail;
	}

	NODE* temp = new NODE;

	temp->data = data;
	tail = temp;
	tail->next = tail;

	return tail;
}


NODE* prepend(NODE* tail, int data)
{
	if (tail == NULL) {
		return insertNode(tail, data);
	}

	NODE* temp = new NODE;

	temp->data = data;

	temp->next = tail->next;
	tail->next = temp;

	return tail;

}

NODE* append(NODE* tail, int data)
{
	if (tail == NULL) {
		return insertNode(tail, data);
	}

	NODE* temp = new NODE;

	temp->data = data;
	temp->next = tail->next;
	tail->next = temp;
	tail = temp;

	return tail;
}

NODE* insertAfter(NODE* tail, int newData, int specificElement)
{
	if (tail == NULL)
	{
		return NULL;
	}

	NODE* tempTail = tail;

	if (tempTail->data == specificElement)
	{
		NODE* newNode = new NODE;
		newNode->data = newData;

		newNode->next = tempTail->next;
		tempTail->next = newNode;

		return newNode;
	}
	else
	{
		insertAfter(tempTail->next, newData, specificElement);
	}
}

void deleteNode(NODE** head, int key)
{
	if (*head == NULL)
		return;

	if ((*head)->data == key && (*head)->next == *head)
	{
		delete* head;
		*head = NULL;
		return;
	}

	NODE* tail = *head;
	NODE* temp;

	if ((*head)->data == key)
	{
		while (tail->next != *head)
			tail = tail->next;

		tail->next = (*head)->next;
		delete* head;

		*head = tail->next;
		return;
	}

	while (tail->next != *head && tail->next->data != key)
	{
		tail = tail->next;
	}

	if (tail->next->data == key) {
		temp = tail->next;
		tail->next = temp->next;
		delete temp;
	}
}

NODE* deleteList(NODE* tail)
{
	if (tail == NULL)
	{
		return NULL;
	}

	NODE* start = tail->next->next;
	NODE* end = tail->next;

	do
	{
		NODE* temp = start;
		start = temp->next;
		delete temp;
	} while (start != end);
	start = NULL;
	end = NULL;
	return tail;
}


NODE* destroyList(NODE* tail)
{
	NODE* start = tail->next;
	while (start != tail)
	{
		NODE* temp = start;
		start = start->next;
		delete temp;
	}
	tail = NULL;

	return tail;
}