#include <stdio.h>
#include <string.h>
#include <stdlib.h>
#include <stdbool.h>

int stringLenght(char st[])
{
    bool flag = false;
    int i = 0;

    // Loop until the end of the string
    while (flag == false)
    {
        if (st[i] == '\0')
        {
            flag = true;
            break;
        }   
        i++;
    }
    
    return i;
}

int main()
{
    char string[20];
    printf("Enter a string:\n");
    scanf("%s", string);

    int ans = stringLenght(string);
    printf("String lenght: %d", ans);
    return 0;
}