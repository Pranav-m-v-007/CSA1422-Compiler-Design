#include <stdio.h>
#include <string.h>

struct symbol {
    char name[20];
    char type[20];
} table[100];

int count = 0;

void insert() {
    printf("Enter Name and Type: ");
    scanf("%s%s", table[count].name, table[count].type);
    count++;
}

void search() {
    char key[20];
    int found = 0;

    printf("Enter name to search: ");
    scanf("%s", key);

    for(int i=0;i<count;i++) {
        if(strcmp(table[i].name, key) == 0) {
            printf("Found: %s %s\n", table[i].name, table[i].type);
            found = 1;
        }
    }
    if(!found) printf("Not Found\n");
}

void display() {
    for(int i=0;i<count;i++)
        printf("%s\t%s\n", table[i].name, table[i].type);
}

int main() {
    int ch;

    while(1) {
        printf("\n1.Insert 2.Search 3.Display 4.Exit\n");
        scanf("%d",&ch);

        switch(ch) {
            case 1: insert(); break;
            case 2: search(); break;
            case 3: display(); break;
            case 4: return 0;
        }
    }
}
