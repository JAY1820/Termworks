//Write a program to implement stack using linked list which converts infix to postfix.


#include <stdio.h>
#include <stdlib.h>
#include <ctype.h>

struct node {
    char item;
    struct node *next;
};

struct node *temp, *first = NULL, *newnd, *last = NULL;

void create(char data) {
    newnd = (struct node*) malloc(sizeof(struct node));
    if(newnd == NULL) {
        printf("\nMemory not allocated!!");
        return;
    }
    newnd->item = data;
    newnd->next = NULL;
}

void push(char data) {
    create(data);
    if(first == NULL) {
        first = last = newnd;
    }
    else {
        newnd->next = first;
        first = newnd;
    }
}

char peek() {
    if(first == NULL) {
        printf("\nstack not exist!!");
        return -1;
    }
    else {
        return first->item;
    }
}

char pop() {
    if(first == NULL) {
        printf("\nstack not exist!!");
        return -1;
    }
    temp = first;
    char tmp = temp->item;
    first = first->next;
    free(temp);
    return tmp;
}

void display() {
    if(first == NULL) {
        printf("\nStack not exist!!");
        return;
    }
    else {
        temp = first;
        printf("\nStack:");
        while(temp != NULL) {
            printf("\n|%c|",temp->item);
            temp = temp->next;
        }
    }
}

int priority(char op) {
    if(op == '(')
        return 0;
    else if(op == '+' || op == '-')
        return 1;
    else if(op == '/' || op == '*')
        return 2;
}

int main() {
    char infix[100], N;
    int cnt = 0, i;

    printf("\nEnter Infix Expression:");
    for (i = 0; i < 100; i++) {
        scanf("%c", &infix[i]);

        if (infix[i] == '\n')
            break;
        else if(infix[i] == 32)
            continue;
        cnt++;
    }
    infix[i] = '\0';
    printf("\nPostfix Expression:");
    i = 0;
    while(infix[i] != '\0') {
        if(isalnum(infix[i])) {
            printf("%c",infix[i]);
        }
        else if (infix[i] == '(') {
            push(infix[i]);
        }
        else if(infix[i] == ')') {
            while((N = pop()) != '(') {
                printf("%c",N);
            }
        }
        else {
            while(first != NULL && priority(peek()) >= priority(infix[i])) {
                printf("%c",pop());
            }
            push(infix[i]);
        }
        i++;
    }
    while(first != NULL) {
        printf("%c",pop());
    }
    return 0;
}
