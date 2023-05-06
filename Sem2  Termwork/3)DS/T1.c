
/*Write a program to Append Last N Nodes to First in the Linked List [Given a linked list
and an integer n, append the last n elements of the LL to front. Assume given n will be
smaller than length of LL. [Input format: Line 1: Linked list elements (separated by space
and terminated by -1.
*/


#include <stdio.h>
#include <stdlib.h>
#include "linklist_term.h"

void append(int n) {
    struct node *newHead;
    int len = 0;
    temp = head;
    while (temp->next != NULL) {
        temp = temp->next;
        len++;
    }
    if (n > len) {
        printf("Error: n > then linked list\n");
        return;
    }
    temp = head;
    for (int i = 1; i < len - n + 1; i++) {
        temp = temp->next;
    }

    newHead = temp->next;
    temp->next = NULL;
    temp = newHead;
    while (temp->next != NULL) {
        temp = temp->next;
    }
    temp->next = head;
    head = newHead;
}

int main() 
{
    int data;

    printf("Enter the elements of the linked list:\n");
    while (1) {
        scanf("%d", &data);
        if (data == -1)
            break;
        insertEnd(&head, data);
    }

    int n;
    printf("Enter the number of nodes to append: ");
    scanf("%d", &n);

    display(head);
    append(n);
    display(head);

    return 0;
}


