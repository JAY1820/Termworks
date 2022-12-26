#include <stdio.h>
#include <string.h>
int Check_anagram(char str1[], char str2[]);

int main(){
    char str1[50];
    char str2[50];

    printf("Enter the First String : ");
    scanf("%s",str1);

    printf("Enter the Second String : ");
    scanf(" %s",str2);

    printf("%d ",Check_anagram(str1,str2));
    return 0;
}

int Check_anagram(char str1[], char str2[])
 {
    int s_freq[26] = {0};
    int t_freq[26] = {0};
    for (int i = 0; i < strlen(str1); i++) {
        s_freq[str1[i] - 'a']++;
    }
    for (int i = 0; i < strlen(str2); i++) {
        t_freq[str2[i] - 'a']++;
    }
    for (int i = 0; i < 26; i++) {
        if (s_freq[i] != t_freq[i]) {
            return -1;
        }
           
    int count = 0;
    for (int i = 0; i < strlen(str1); i++) {
        if (str1[i] == str2[i]) {
            count++;
        }
    }
    return count;
}
}

