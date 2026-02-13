#include <stdio.h>
#include <string.h>

int check(char str[], int l, int r) {
    if(l > r) return 1;
    if(str[l] == 'a' && str[r] == 'b')
        return check(str, l+1, r-1);
    return 0;
}

int main() {
    char str[50];
    printf("Enter string: ");
    scanf("%s", str);

    if(check(str,0,strlen(str)-1))
        printf("Valid String\n");
    else
        printf("Invalid String\n");

    return 0;
}
