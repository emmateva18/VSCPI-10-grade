#include <iostream>
#include <string>
#include <vector>

using namespace std;

struct NODE
{
    int data;
    NODE* next = NULL;
    NODE* prev = NULL;
};

struct DOUBLY_LINKED_LIST
{
    NODE* head = NULL;
    NODE* tail = NULL;
};

NODE* newNode(int data)
{
    NODE* node = new NODE;
    node->data = data;
    return node;
}

void insertFirst(DOUBLY_LINKED_LIST* list, int data)
{
    NODE* node = newNode(data);
    node->next = list->head;
    list->head = node;
    if (node->next)
    {
        node->next->prev = node;
    }

    if (list->tail == NULL)
    {
        list->tail = node;
    }
}

void displayList(DOUBLY_LINKED_LIST* list)
{
    NODE* node = list->head;

    while (node)
    {
        cout << node->data << " ";
        node = node->next;
    }
}

bool deleteFirst(DOUBLY_LINKED_LIST* list)
{
    if (list->head)
    {
        NODE* tmp = list->head->next;
        delete list->head;
        list->head = tmp;
        if (list->head == NULL)
        {
            list->tail = NULL;
            return false;
        }
        return true;
    }
    return false;
}

void destroyList(DOUBLY_LINKED_LIST* list)
{
    while (deleteFirst(list));
}

void displayListBackwards(DOUBLY_LINKED_LIST* list)
{
    NODE* node = list->tail;

    while (node)
    {
        cout << node->data << " ";
        node = node->prev;
    }
}

int main()
{
    DOUBLY_LINKED_LIST list;
    insertFirst(&list, 5);
    insertFirst(&list, 9);
    insertFirst(&list, 11);
    insertFirst(&list, 13);

    // displayList(&list);

    // deleteFirst(&list);

    // destroyList(&list);

    displayListBackwards(&list);

    /*
    To Do:
    deleteLast
    displayBackwords
    insert
    */
}
