#include <stdio.h>
#include <string.h>

int main() {
    char expr[20];
    int temp = 1;

    printf("Enter expression: ");
    scanf("%s", expr);

    printf("Three Address Code:\n");

    if(strchr(expr,'*')) {
        printf("t%d = %c * %c\n", temp, expr[4], expr[6]);
        printf("t%d = %c + t%d\n", temp+1, expr[2], temp);
        printf("%c = t%d\n", expr[0], temp+1);
    }

    return 0;
}
