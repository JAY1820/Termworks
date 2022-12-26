#include<stdio.h>
int collatz(int m);
static int cnt=0;
int main()
{
	int n,c;
	printf("\nenter a number") 
gt:	scanf("%d",&n);
	if(n<=0 & n>32000) 
	{
		printf("please enter positive number.");
		goto gt;
	}
	else
	{
		c=collatz(n);
		printf("%d",cnt);
	}
}

int collatz(int n){
    if(n==1){
        return cnt;
    }else{
        cnt++;
        if(n%2==0){
            collatz(n/2);
        }else{
            collatz((3*n)+1);
        }
    }

}



