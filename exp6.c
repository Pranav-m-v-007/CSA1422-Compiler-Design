#include <stdio.h>
#include <string.h>

int main() {
    char prod[50], alpha[50], beta[50];
    char nonterm;

    printf("Enter production (Example: E=E+T|T): ");
    scanf("%s", prod);

    nonterm = prod[0];

    char *arrow = strchr(prod, '=');
    char *first = arrow + 1;
    char *second = strchr(first, '|') + 1;

    if(first[0] == nonterm) {
        strcpy(alpha, first + 1);
        strcpy(beta, second);

        printf("\nAfter eliminating left recursion:\n");
        printf("%c -> %s%c'\n", nonterm, beta, nonterm);
        printf("%c' -> %s%c' | ε\n", nonterm, alpha, nonterm);
    } else {
        printf("No left recursion found.\n");
    }

    return 0;
}
