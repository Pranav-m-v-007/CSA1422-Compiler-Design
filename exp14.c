#include <stdio.h>
#include <string.h>

int main() {
    char exp1[20], exp2[20];

    printf("Enter first expression: ");
    scanf("%s", exp1);
    printf("Enter second expression: ");
    scanf("%s", exp2);

    if(strcmp(exp1, exp2)==0)
        printf("Common Subexpression Eliminated: %s reused\n", exp1);
    else
        printf("No Common Subexpression\n");

    return 0;
}
