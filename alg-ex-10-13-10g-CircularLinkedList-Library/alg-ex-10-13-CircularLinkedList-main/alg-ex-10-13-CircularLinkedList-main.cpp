#include<iostream>
#include "..\alg-ex-10-13-CircularLinkedList-Library\CircularListLibrary.h"
using namespace std;

int main()
{
	struct NODE* tail = NULL;
	tail = insertNode(tail, 30);
	tail = prepend(tail, 20);
	tail = prepend(tail, 10);
	tail = append(tail, 40);
	tail = append(tail, 60);
	tail = insertAfter(tail, 50, 40);
	cout << "The circular linked list created is as follows:" << endl;
	int key = 60;
	displayList(tail);
	deleteNode(&tail, key);
	cout << "The corcular list after deleting " << key << " is:" << endl;
	displayList(tail);
	deleteList(tail);
}