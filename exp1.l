%{
#include <stdio.h>
#include <string.h>
#define MAXLEN 31
%}

DIGIT      [0-9]
LETTER     [a-zA-Z]
ID         {LETTER}({LETTER}|{DIGIT})*
NUMBER     {DIGIT}+(\.{DIGIT}+)?
OPERATOR   [+\-*/=<>!]

%%

[ \t\n]+              ;   /* Ignore whitespace */

"//".*                ;   /* Ignore single-line comments */
"/*"([^*]|\*+[^*/])*\*+"/"    ;   /* Ignore multi-line comments */

{ID} {
        if(strlen(yytext) > MAXLEN)
            printf("Identifier too long: %s\n", yytext);
        else
            printf("Identifier: %s\n", yytext);
     }

{NUMBER}   printf("Constant: %s\n", yytext);

{OPERATOR} printf("Operator: %s\n", yytext);

.          printf("Invalid token: %s\n", yytext);

%%

int main() {
    printf("Enter code:\n");
    yylex();
    return 0;
}

int yywrap() {
    return 1;
}
