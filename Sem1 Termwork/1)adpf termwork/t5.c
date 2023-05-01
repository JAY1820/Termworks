// orbit  M, (2*M) mod N, (2^2*M) mod N,  --> distint number logic
// test case : 5 and 8 

#include <stdio.h>
#include <math.h>
int main(){
    int M,N;
    scanf("%d %d",&M,&N);
    int arr[N];
    for (int i=0; i<N; i++){
        printf("%d\n",((M*(int)pow(2,i))%N));
        arr[i] = (M*(int)pow(2,i))%N;
    }

    int i,j,cnt=0;
    for(i=0; i<N; i++){
        for(j=0; j<i; j++){
            if (arr[i] == arr[j])   //if distinct number found 
            {
                break;
            }
            
        }
        if(i==j){
            cnt++;
        }
    }
    printf("toal count is:%d",cnt);
    return 0;
}