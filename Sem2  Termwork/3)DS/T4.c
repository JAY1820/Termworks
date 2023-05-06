/*
Write a program to implement a phone directory using a singly circular linked list with
following operations. Node has info like cust_id, name, phone_number.
● Insert from first
● Insert from last
● Insert at directory sorting position based on cust_id
● Delete from specific position
● Delete from first
● Delete from last
● Display in sorted order
● Search by name
● Search by cust_id
● Search by phone_number
● Delete by name
● Delete by cust_id
● Delete by phone_number

*/

#include <stdio.h>
#include <stdlib.h>
#include <string.h>

struct node
{
    int cust_id;
    char name[20];
    char phone_number[20];
    struct node *next;
};

// create a node
void create(struct node **newnode, int cust_id, char name[], char phone_number[])
{
    *newnode = (struct node *)malloc(sizeof(struct node));

    if (*newnode == NULL)
    {
        printf("No memory\n");
        exit(0);
    }

    (*newnode)->cust_id = cust_id;
    strcpy((*newnode)->name, name);
    strcpy((*newnode)->phone_number, phone_number);
    (*newnode)->next = NULL;
}

void insertend(struct node **head, int cust_id, char name[], char phone_number[])
{

    struct node *new_node = (struct node *)malloc(sizeof(struct node));
    new_node->cust_id = cust_id;
    strcpy(new_node->name, name);
    strcpy(new_node->phone_number, phone_number);

    if (*head == NULL)
    {
        new_node->next = new_node;
        *head = new_node;
        return;
    }
    if ((searchcust_id(*head, cust_id)))
    {
        printf("ok done\n");
        return;
    }
    struct node *last = *head;
    while (last->next != *head)
        last = last->next;

    new_node->next = last->next;
    last->next = new_node;
}

void insertfirst(struct node **head, int cust_id, char name[], char phone_number[])
{
    struct node *newnode;
    create(&newnode, cust_id, name, phone_number);

    if (*head == NULL)
    {
        *head = newnode;
        newnode->next = *head;
    }
    // search in search for cust_id if found then dont insert
    if ((searchcust_id(*head, cust_id)))
    {
        printf("ok done\n");
        return;
    }
    else
    {
        struct node *temp = *head;
        while (temp->next != *head)
        {
            temp = temp->next;
        }
        newnode->next = *head;
        temp->next = newnode;
        *head = newnode;
    }
}

// sort based on cust_id
void sort(struct node **head)
{
    struct node *temp = *head;
    struct node *i, *j;
    int temp_cust_id;
    char temp_name[20];
    char temp_phone_number[10];

    for (i = temp; i->next != *head; i = i->next)
    {
        for (j = i->next; j != *head; j = j->next)
        {
            if (i->cust_id > j->cust_id)
            {
                temp_cust_id = i->cust_id;
                i->cust_id = j->cust_id;
                j->cust_id = temp_cust_id;

                strcpy(temp_name, i->name);
                strcpy(i->name, j->name);
                strcpy(j->name, temp_name);

                strcpy(temp_phone_number, i->phone_number);
                strcpy(i->phone_number, j->phone_number);
                strcpy(j->phone_number, temp_phone_number);
            }
        }
    }
}

void displaysorted(struct node *head)
{

    struct node *temp = head;
    sort(&head);

    do
    {
        printf("%d %s %s\n", temp->cust_id, temp->name, temp->phone_number);
        temp = temp->next;
    } while (temp != head);
}

void insertsort(struct node **head, int cust_id, char name[], char phone_number[])
{
    struct node *newnode;
    create(&newnode, cust_id, name, phone_number);

    if (*head == NULL)
    {
        *head = newnode;
        newnode->next = *head;
    }
    else if ((*head)->cust_id > cust_id)
    {
        struct node *temp = *head;
        while (temp->next != *head)
        {
            temp = temp->next;
        }
        newnode->next = *head;
        temp->next = newnode;
        *head = newnode;
    }
    else
    {
        struct node *temp = *head;
        while (temp->next != *head && temp->next->cust_id < cust_id)
        {
            temp = temp->next;
        }
        newnode->next = temp->next;
        temp->next = newnode;
    }
}

void deletepos(struct node **head)
{
    int pos;
    printf("Enter position: ");
    scanf("%d", &pos);

    if (*head == NULL)
    {
        printf("List is empty\n");
    }
    else
    {
        struct node *temp = *head;
        struct node *prev = NULL;
        int i = 0;
        while (temp->next != *head && i < pos)
        {
            prev = temp;
            temp = temp->next;
            i++;
        }
        if (i != pos)
        {
            printf("Invalid position\n");
        }
        else
        {
            if (prev == NULL)
            {
                struct node *last = *head;
                while (last->next != *head)
                {
                    last = last->next;
                }
                *head = (*head)->next;
                last->next = *head;
            }
            else
            {
                prev->next = temp->next;
            }
            free(temp);
        }
    }
}

void deletefirst(struct node **head)
{
    if (*head == NULL)
    {
        printf("List is empty\n");
    }
    else
    {
        struct node *temp = *head;
        struct node *last = *head;
        while (last->next != *head)
        {
            last = last->next;
        }
        *head = (*head)->next;
        last->next = *head;
        free(temp);
    }
}

void deletelast(struct node **head)
{
    if (*head == NULL)
    {
        printf("List is empty\n");
    }
    else
    {
        struct node *temp = *head;
        struct node *prev = NULL;
        while (temp->next != *head)
        {
            prev = temp;
            temp = temp->next;
        }
        if (prev == NULL)
        {
            *head = NULL;
        }
        else
        {
            prev->next = temp->next;
        }
        free(temp);
    }
}
// search based on name
void searchname(struct node *head)
{
    char name[20];
    printf("Enter name: ");
    scanf("%s", name);

    struct node *temp = head;
    int i = 0;
    do
    {
        if (strcmp(temp->name, name) == 0)
        {
            printf("%d %s %s\n", temp->cust_id, temp->name, temp->phone_number);
            i++;
        }
        temp = temp->next;
    } while (temp != head);
    if (i == 0)
    {
        printf("Name not found\n");
    }
}

// search based on cust_id
int searchcust_id(struct node *head, int cust_id)
{
    struct node *temp = head;
    int found = 0;
    do
    {
        if (temp->cust_id == cust_id)
        {
            printf("%d %s %s\n", temp->cust_id, temp->name, temp->phone_number);
            found = 1;
            break;
        }
        temp = temp->next;
    } while (temp != head);

    if (!found)
    {
        printf("Not found\n");
        return 0;
    }
    return 1;
}

// search based on phone number
void searchphone_number(struct node *head)
{
    char phone_number[10];
    printf("Enter phone number: ");
    scanf("%s", phone_number);

    struct node *temp = head;
    int i = 0;
    do
    {
        if (strcmp(temp->phone_number, phone_number) == 0)
        {
            printf("%d %s %s\n", temp->cust_id, temp->name, temp->phone_number);
            i++;
        }
        temp = temp->next;
    } while (temp != head);
    if (i == 0)
    {
        printf("Phone number not found\n");
    }
}

void deletbyname(struct node **head)
{
    char name[20];
    printf("Enter name: ");
    scanf("%s", name);

    struct node *temp = *head;
    struct node *prev = NULL;
    int i = 0;
    do
    {
        if (strcmp(temp->name, name) == 0)
        {
            if (prev == NULL)
            {
                struct node *last = *head;
                while (last->next != *head)
                {
                    last = last->next;
                }
                *head = (*head)->next;
                last->next = *head;
            }
            else
            {
                prev->next = temp->next;
            }
            free(temp);
            i++;
        }
        prev = temp;
        temp = temp->next;
    } while (temp != *head);
    if (i == 0)
    {
        printf("Name not found\n");
    }
}

void deletebyid(struct node **head)
{
    int cust_id;
    printf("Enter customer ID: ");
    scanf("%d", &cust_id);

    struct node *temp = *head;
    struct node *prev = NULL;
    int i = 0;
    do
    {
        if (temp->cust_id == cust_id)
        {
            if (prev == NULL)
            {
                struct node *last = *head;
                while (last->next != *head)
                {
                    last = last->next;
                }
                *head = (*head)->next;
                last->next = *head;
            }
            else
            {
                prev->next = temp->next;
            }
            free(temp);
            i++;
        }
        prev = temp;
        temp = temp->next;
    } while (temp != *head);
    if (i == 0)
    {
        printf("Customer ID not found\n");
    }
}

void deletebyphone(struct node **head)
{
    char phone_number[10];
    printf("Enter phone number: ");
    scanf("%s", phone_number);

    searchphone_number(*head);
}
void display(struct node *head)
{
    struct node *temp = head;
    int i = 0;
    do
    {
        printf("%d %s %s\n", temp->cust_id, temp->name, temp->phone_number);
        temp = temp->next;
        i++;
    } while (temp != head);
}

int main()
{
    struct node *head = NULL;
    int ch;
    int cust_id;
    char name[20], phone_number[10];

    do
    {
        printf("Enter your choice:");
        scanf("%d", &ch);
        switch (ch)
        {
        case 1:
            printf("Enter at first customer ID, name, and phone number: ");
            scanf("%d %s %s", &cust_id, name, phone_number);
            insertfirst(&head, cust_id, name, phone_number);
            break;
        case 2:
            printf("Enter at last customer ID, name, and phone number: ");
            scanf("%d %s %s", &cust_id, name, phone_number);
            insertend(&head, cust_id, name, phone_number);
            break;
        case 3:
            printf("sorting customer ID, name, and phone number: ");
            scanf("%d %s %s", &cust_id, name, phone_number);
            insertsort(&head, cust_id, name, phone_number);
            break;

        case 4:
            deletepos(&head);
            break;
        case 5:
            deletefirst(&head);
            break;
        case 6:
            deletelast(&head);
            break;
        case 7:
            displaysorted(head);
            break;
        case 8:
            searchname(head);
            break;
        case 9:
            printf("Enter customer ID: ");
            scanf("%d", &cust_id);
            searchcust_id(head, cust_id);
            break;
        case 10:
            searchphone_number(head);
            break;
        case 11:
            deletbyname(&head);
            break;
        case 12:
            deletebyid(&head);
            break;
        case 13:
            deletebyphone(&head);
            break;
        case 14:
            display(head);
            break;
        case -1:
            printf("Exit\n");
            break;
        default:
            printf("Invalid choice\n");
            break;
        }

    } while (ch != -1);

    return 0;
}
