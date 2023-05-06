#include <stdio.h>
#include <stdlib.h>
struct node
{
    char data;
    struct node *next;
} *head = NULL, *temp, *newnode;

void create(struct node **head, int data) {
    struct node *newnode = (struct node *)malloc(sizeof(struct node));
    if (newnode == NULL) {
        printf("No memory\n");
        exit(0);
    }
    newnode->data = data;
    newnode->next = NULL;
    *head = newnode;
}

void insertEnd(struct node **head, int data) {
    struct node *temp, *newnode = (struct node *)malloc(sizeof(struct node));

    if (newnode == NULL) {
        printf("No memory\n");
        exit(0);
    }

    newnode->data = data;
    newnode->next = NULL;
    if (*head == NULL) {
        *head = newnode;
        return;
    }
    
    temp = *head;
    while (temp->next != NULL) {
        temp = temp->next;
    }
    temp->next = newnode;
}

void display(struct node *head) {
    struct node *temp;
    if (head == NULL) {
        printf("List is empty\n");
    }
    else {
        temp = head;
        while (temp != NULL) {
            printf("%d ", temp->data);
            temp = temp->next;
        }
        printf("\n");
    }
}

void insertFirst(struct node **head, int data) {
    struct node *newnode = (struct node *)malloc(sizeof(struct node));
    if (newnode == NULL) {
        printf("No memory\n");
        exit(0);
    }
    newnode->data = data;
    newnode->next = NULL;
    if (*head == NULL) {
        *head = newnode;
        return;
    }
    newnode->next = *head;
    *head = newnode;
}

void insertSpecific(struct node **head, int data, int pos) {
    struct node *temp, *newnode = (struct node *)malloc(sizeof(struct node));
    if (newnode == NULL) {
        printf("No memory\n");
        exit(0);
    }
    newnode->data = data;
    newnode->next = NULL;
    
    if (pos == 1) {
        insertFirst(head, data);
        return;
    }
    
    temp = *head;
    
    for(int i=1; i<pos-1 && temp!=NULL; i++) {
        temp=temp->next; 
     } 
     
     if(temp==NULL){
         printf("Invalid position\n");
         return; 
     } 
     
     newnode->next=temp->next; 
     temp->next=newnode; 
}

void deletefirst(struct node **head)
{
    
   struct node* temp=*head; 
   
   if(*head==NULL)
   { 
       printf("list is empty\n"); 
       return; 
   } 
   
   else{ 
       *head=temp->next; 
       free(temp); 
   } 
} 

void deleteend(struct node **head)
{
   struct node* previous=NULL;   
   struct node* temp=*head; 
   
   if(*head==NULL)
   { 
       printf("list is empty\n"); 
       return; 
   } 
   
   else{ 
        
     while(temp->next!=NULL)
     { 
       previous=temp; 
       temp=temp->next; 
     } 
    
     previous->next=NULL; 
    
     free(temp); 
    
   } 

}
void deletespecific(struct node **head, int pos)
{
    struct node *temp=*head;
    struct node *prev=NULL;
    
    if(*head==NULL)
    {
        printf("List is empty\n");
        return;
    }
    
    if(pos==1)
    {
        deletefirst(head);
        return;
    }
    
    for(int i=1; i<pos && temp!=NULL; i++)
    {
        prev=temp;
        temp=temp->next;
    }
    
    if(temp==NULL)
    {
        printf("Invalid position\n");
        return;
    }
    
    prev->next=temp->next;
    
    free(temp);
}

void reverse(struct node **head) {
    struct node *prev = NULL;
    struct node *next = NULL;
    struct node *temp = *head;
    
    while(temp != NULL) {
        next = temp->next;
        temp->next = prev;
        prev = temp;
        temp = next;
    }
    
    *head = prev;
}