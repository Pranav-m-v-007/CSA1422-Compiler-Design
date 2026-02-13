#include <stdio.h>
#include <stdlib.h>
#include <string.h>

char input[50];
int i = 0;

void E();
void Eprime();
void T();

void E() {
    T();
    Eprime();
}

void Eprime() {
    if(input[i] == '+') {
        i++;
        T();
        Eprime();
    }
}

void T() {
    if(input[i] == 'a')
        i++;
    else {
        printf("Error\n");
        exit(0);
    }
}

int main() {
    printf("Enter string: ");
    scanf("%s", input);
    E();
    if(input[i] == '\0')
        printf("Accepted\n");
    else
        printf("Rejected\n");
}
