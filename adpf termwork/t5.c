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
            if (arr[i] == arr[j])
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