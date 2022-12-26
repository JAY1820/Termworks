#include<stdio.h>
int main()
{
  	int bit1,bit2;
  	printf("Enter the 1st bit : ");
  	scanf("%d",&bit1);
  	printf("\nPlease, Enter the 2nd bit : ");
  	scanf("%d",&bit2);
  	if(bit1==0||bit1==1&&bit2==0||bit2==1)
  	{
    	if(bit1==bit2)
    	{
      	printf("\n\nThe result is %d XOR %d = 0",bit1,bit2);
    	}
    	else
    	{
      	printf("\n\nThe result is %d XOR %d = 1",bit1,bit2);
    	}
  	}
  	else
  	{
    	printf("\n\nSorry, You have entered wrong choice/value.");
  	}
  	return 0;
}