#include <stdio.h>
#include <ctype.h>

int main() {
    FILE *fp;
    char ch;
    int chars=0, words=0, lines=0;
    int inword=0;

    fp = fopen("input.txt","r");

    while((ch=fgetc(fp))!=EOF) {
        chars++;

        if(ch=='\n')
            lines++;

        if(isspace(ch))
            inword=0;
        else if(!inword) {
            words++;
            inword=1;
        }
    }

    fclose(fp);

    printf("Characters=%d\nWords=%d\nLines=%d\n",chars,words,lines);
}
