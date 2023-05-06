/*
Write a program to find Union and Intersection of two Linked Lists [Given two Linked
Lists, create union and intersection lists that contain union and intersection of the
elements present in the given lists. Order of elements in output lists doesn’t matter.
Example:
Input:
List1: 10->15->4->20
lsit2: 8->4->2->10
Output:
Intersection List: 4->10
Union List: 2->8->20->4->15->10
*/

#include <stdio.h>
#include <stdlib.h>
#include <stdbool.h>
#include "linklist_term.h"

// function to find the intersection and union of two linked lists

//head 1 for linklist 1 , head2 for linklist 2, head3 for intersection, head4 for union
void interunion(struct node **head1, struct node **head2, struct node **head3, struct node **head4)
{
    // checks if both lists are empty
    if (*head1 == NULL && *head2 == NULL) 
    {
        return;
    }

    struct node *temp1 = *head1;
    
    while (temp1 != NULL) 
    {
        struct node *temp2 = *head2;
        while (temp2 != NULL)
        {
    //it compares each element of the first list with each element of the second list.
    //If an element is found in both lists, it is added to the intersection list (head3).  
    
            if (temp1->data == temp2->data) 
            {
                insertEnd(head3, temp1->data);
                break;
            }
            temp2 = temp2->next;
        }
        
        //otherwise add to Union list(head4)
        insertEnd(head4, temp1->data);
        temp1 = temp1->next;
    }
    
    // second list element that were not already added to the union list are also added to it.
    
    struct node *temp2 = *head2;
    while (temp2 != NULL) 
    {
        struct  node *temp3 = *head3;
        bool found = false;
        while (temp3 != NULL)
        {
            //if the element was already added to the intersection list, it is not added to the union list.
            if (temp2->data == temp3->data)
            {
                found = true;
                break;
            }
            temp3 = temp3->next;
        }
        //if the element was not found in the intersection list, it is added to the union list.
        if (!found)
        {
            insertEnd(head4, temp2->data);
        }
        temp2 = temp2->next;
    }
}


int main() {
    struct node *head1 = NULL, *head2 = NULL, *head3 = NULL, *head4 = NULL;
    int data;
    printf("Enter the elements of the linked list 1:\n");
    while (1) {
        scanf("%d", &data);
        if (data == -1)
            break;
        insertEnd(&head1, data);
    }
    printf("Enter the elements of the linked list 2:\n");
    while (1) {
        scanf("%d", &data);
        if (data == -1)
            break;
        insertEnd(&head2, data);
    }
    interunion(&head1, &head2, &head3, &head4);
    printf("Intersection List: ");
    display(head3);
    printf("Union List: ");
    display(head4);
    return 0;
}