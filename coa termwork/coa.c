#include<stdio.h>
int main()
{
    int i, product,x,y,ch;
    int a[4]={0,0,1,1};
    int b[4]={0,1,0,1};
    restart:
    printf("1.Binary value For XOR and XNOR Gates:\n");
    printf("2. XOR Gate truth table\n"); 
    printf("3. XNOR Gate truth table\n");
    printf("enter your choice:\n");
    scanf("%d",&ch);
    switch(ch)
    {
     case 1:
         printf("enter 0 and 1:\n");
        scanf("%d %d",&x,&y);
        if((x==1 || x==0) && (y==0 || y==1))
        {
            printf("\n RESULT OF  XOR IS = %d\n",x^y);
        printf("\n RESULT OF  XNOR IS = %d\n",!(x^y));

        }
        else{
             printf("inputs are not in binary form\n");
        }

        break;

     case 2:
        printf("------------------------------------\n");
        printf("XOR gate truth table:\n");
       for (i = 0; i < 4; i++)
      {
          product = a[i] ^ b[i];
           printf("\n %d XOR %d = %d\n",a[i], b[i],product);
        }
       printf("--------------------------------------\n");
     break;

     case 3:
     printf("XNOR gate truth table:\n");
     for (i = 0; i < 4; i++)
      {
          product = !(a[i] ^ b[i]);
           printf("\n %d XNOR %d = %d\n",a[i], b[i],product);
           }
     printf("--------------------------------------\n");
      break;
    }

    printf("enter your view to restart or end program:\n");
    printf("1.restart\n");
    printf("2.exit\n");
    printf("enter your choice:\n");
    scanf("%d",&ch);
    switch(ch)
    {
     case 1:
         goto restart;
         break;
     case 2:
          return 0;

    }
    return 0;
}

