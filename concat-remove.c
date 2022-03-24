#include <stdio.h>
#include <string.h>
#include <stdlib.h>

int min(int x, int y)
{
    return (x<y)? x : x;
}

char * concatRemove(char s[], char t[], int k)
{
    int i, m;
    int len_s, len_t;
    int moves;

    // Get string lenghts
    len_s = strlen(s);
    len_t = strlen(t);

    // Get min value between lenghts
    m = min(len_s, len_t); 

    // Check if the beginning of the strings are the same
    for(i=0;i<m;i++)   
        if (s[i] != t[i])
            break;
    

    // Check the number of movemments that's necessary
    moves = (len_s - i) + (len_t - i);

    char * ans = malloc(5);

    // Check if it's possible to change s using k operations
    if ((moves <= k && moves%2 == k%2) || (k > len_s + len_t))
        strcpy(ans, "yes");
    else
        strcpy(ans, "no");
    return ans;
}

int main()
{
    char s[] = "blablablabla", t[] = "blablabcde";
    int k = 8;

    char * ans = concatRemove(s, t, k);

    printf("Inputs:\n");
    printf("s = %s\n", s);
    printf("t = %s\n", t);
    printf("k = %d\n", k);
    printf("Output: %s", ans);
    free(ans);

    return 0;
}

