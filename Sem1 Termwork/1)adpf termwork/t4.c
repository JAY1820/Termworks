// find a longest substring of a

#include<stdio.h>
#include<string.h>
int main()
{
    char str[100];
    int c=1,k=0,cnt[100],len,large=0;
    printf("Enter a String:");
    scanf("%s",&str);
    len=strlen(str);
    for(int i=0; str[i]!='\0'&&str[i+1]!='\0'; i++)
    {
        if(str[i]==str[i+1])
        {
            c++;
            cnt[k]=c;
        }
        if(str[i]!=str[i+1])
        {
            c=1;
            cnt[k]=c; 
        }
        k++;
    }
    for(int i=0; i<len-1; i++)
    {
        if(cnt[i]>large)
        {
            large=cnt[i];
        }
    }
    printf("\nOutput:%d",large);
    return 0;
}