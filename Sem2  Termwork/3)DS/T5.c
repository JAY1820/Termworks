// Write a program to implement priority queue using linked list

#include <stdio.h>
#include <stdlib.h>

struct node
{
    int data;
    int priority;
    struct node *next;
} *newnode, *temp, *head;

void create(int data, int priority)
{
    newnode = (struct node *)malloc(sizeof(struct node));
    newnode->data = data;
    newnode->priority = priority;
    newnode->next = NULL;
}

int peek()
{
    return head->data;
}

void dequeue()
{
    temp = head;
    head = head->next;
    free(temp);
}

void enqueue(int data, int priority)
{
    struct node *start = head;

    create(data, priority);

    if (head->priority > priority)
    {
        newnode->next = head;
        head = newnode;
    }
    else
    {
        while (start->next != NULL && start->next->priority < priority)
        {
            start = start->next;
        }
        newnode->next = start->next;
        start->next = newnode;
    }
}

int isEmpty()
{
    return head == NULL;
}

int main()
{

    head = (struct node *)malloc(sizeof(struct node));
    head->data = 4;
    head->priority = 1;
    head->next = NULL;
printf("Priority Queue\n");
    enqueue(5, 2);
    enqueue(6, 3);
    enqueue(7, 0);

    while (!isEmpty())
    {
        printf("%d ", peek());
        dequeue();
    }

    return 0;
}