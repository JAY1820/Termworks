//PATTERN 3

#include <stdio.h>
int main() {
   int rows,space, i, j;
   int ans=1;
   
   printf("Enter the number of rows: ");
   scanf("%d", &rows);
   
   
   for (i = 0; i < rows; i++) {
      for (space = 1; space <= rows - i; space++)
         printf("  ");
         
      for (j = 0; j <= i; j++) 
      {
         if (j == 0 || i == 0)
            ans = 1;
         else
            ans = ans * (i - j + 1) / j;
         printf("%4d", ans);
      }
      printf("\n");
   }
   return 0;
}