%{
#include <stdio.h>
%}

LETTER  [a-zA-Z]
DIGIT   [0-9]
ID      {LETTER}({LETTER}|{DIGIT})*

%%

{ID}    printf("Valid Identifier: %s\n", yytext);

.       printf("Invalid Identifier\n");

%%

int main() {
    yylex();
    return 0;
}

int yywrap() {
    return 1;
}
