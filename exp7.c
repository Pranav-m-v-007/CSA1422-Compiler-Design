#include <stdio.h>
#include <string.h>

int main() {
    char p1[20], p2[20];
    char prefix[20];
    int i = 0;

    printf("Enter first production: ");
    scanf("%s", p1);
    printf("Enter second production: ");
    scanf("%s", p2);

    while(p1[i] && p2[i] && p1[i] == p2[i]) {
        prefix[i] = p1[i];
        i++;
    }
    prefix[i] = '\0';

    printf("\nAfter Left Factoring:\n");
    printf("A -> %sA'\n", prefix);
    printf("A' -> %s | %s\n", p1+i, p2+i);

    return 0;
}
