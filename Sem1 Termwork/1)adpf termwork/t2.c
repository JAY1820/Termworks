#include<stdio.h>
void reverse();

int main(){
     printf("\n enter a string:");
    reverse();
    return 0;
}



void reverse(){
    char length;
    scanf("%c",&length);
    if(length != '\n'){
        reverse();
        printf("%c",length);
    }
}

