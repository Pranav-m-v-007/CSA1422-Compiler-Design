#include <stdio.h>

int main() {
    char op, a, b;

    printf("Enter expression (a+b format): ");
    scanf("%c%c%c", &a, &op, &b);

    printf("\nTarget Code:\n");
    printf("MOV R0, %c\n", a);
    printf("MOV R1, %c\n", b);

    switch(op) {
        case '+': printf("ADD R0, R1\n"); break;
        case '-': printf("SUB R0, R1\n"); break;
        case '*': printf("MUL R0, R1\n"); break;
        case '/': printf("DIV R0, R1\n"); break;
    }

    printf("MOV RESULT, R0\n");

    return 0;
}

