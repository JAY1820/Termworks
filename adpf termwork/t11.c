// recursion fibonaccii

#include<stdio.h>
// int fib(int n)
// {
//     if(n<=2)
//         return 1;
//     else
//         return fib(n-1)+fib(n-2);
// }

// int main()
// {
//     int n;
//     printf("Enter N:");
//     scanf("%d",&n);
//     printf("Fibonacci Series:");
//     for(int i=1; i<=n; i++)
//         printf(" %d ",fib(i));
//     return 0;
// }


void fib(int n){    
    static int n1=1,n2=1,n3;    
    if(n>0){    
         n3 = n1 + n2;    
         n1 = n2;    
         n2 = n3;    
         printf("%d ",n3);    
         fib(n-2);    
    }    
}    


int main(){    
    int n;    
    scanf("%d",&n); 
    printf("Fibonacci Series:");
    printf("%d %d ",1,1);    
    fib(n-2);
  return 0;  
 }    