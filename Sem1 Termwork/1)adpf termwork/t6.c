#include <stdio.h>
int main(){
 int size, lowerTriangular = 1, upperTriangular = 1;
 scanf("%d", &size);
 for(int i=0; i < size; i++)
 {
  for(int j=0; j < size; j++)
  {
   int v;
   scanf("%d", &v);
   if(j < i && v != 0 && upperTriangular)
    upperTriangular = 0;
   else if(j > i && v != 0 && lowerTriangular)
    lowerTriangular = 0;
    }
 }
 if(lowerTriangular || upperTriangular){
     printf("yes\n");
 }else{
     printf("no\n");
}
 return 0;
}