#include <stdio.h>
int orbit[100];
void initialize()
{
int i;
for ( i=0; i<100; i++ ){
orbit[i] = -1;
}
return;
}

int main()
{
int m;
int n;
int orbit_length=0;
int current;

printf("Enter the m and n value:");
scanf("%d",&m);
scanf("%d",&n);
initialize();
current=m;

while(orbit[current]== -1){
orbit[current]=1;
orbit_length++;
current = (current * 2) % n;
}
printf("%d\n",orbit_length);
return 0;
}

