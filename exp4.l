%{
#include <stdio.h>

int spaces = 0;
int tabs = 0;
int lines = 0;
%}

%%

" "     spaces++;
"\t"    tabs++;
"\n"    lines++;

.       ;

%%

int main() {
    yylex();
    printf("Spaces: %d\nTabs: %d\nNewlines: %d\n", spaces, tabs, lines);
    return 0;
}

int yywrap() {
    return 1;
}
