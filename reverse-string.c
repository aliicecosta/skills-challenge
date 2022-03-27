#include <stdio.h>
#include <string.h>
#include <stdlib.h>

char * reverseString(char s[])
{
    int i, j, n = strlen(s);
    
    for(i=0;i<n/2;i++)
    {
        j = n - i - 1;
        s[n+1] = s[j];
        s[j] = s[i];
        s[i] = s[n+1];
    }
    return s;
}

int main()
{
    char string[20];
    printf("Enter a string:\n");
    scanf("%s", string);

    char * ans = reverseString(string);

    printf("Output: %s", ans);
    free(ans);

    return 0;
}