#include<stdio.h>
int main()
{
    float N;
    printf("\nEnter a integer no : ");
    scanf("%f",&N);
    int b=N;
    if(b==N)
    {
        int sum_lower=0,sum_upper=0,a;
        printf("\nEnter matrix values : \n");
        for(int i=1;i<=N;i++)
        {
            for(int j=1;j<=N;j++)
            {

                scanf("%d",&a);
                if(i<j)
                {
                    sum_upper+=a;
                }
                if(j<i)
                {
                    sum_lower+=a;
                }
            }
            printf("\n");
        }

        if(sum_upper==0 || sum_lower==0)
        {
            printf("\n\nYES");
        }

        else{
            printf("\n\nNO");
        }

    }
    else{
        printf("\nEnter integer number");
    }
    return 0;
}