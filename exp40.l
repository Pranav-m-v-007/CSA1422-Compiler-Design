%{
#include <stdio.h>
%}

%%

"<="|">="|"=="|"!="     printf("Relational Operator: %s\n", yytext);

"<"|">"                 printf("Relational Operator: %s\n", yytext);

[a-zA-Z_][a-zA-Z0-9_]*  
                        printf("Word: %s\n", yytext);

[ \t\n]+                ;

.                       printf("Unknown: %s\n", yytext);

%%

int main(){ yylex(); }
int yywrap(){ return 1; }
