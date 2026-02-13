%{
#include <stdio.h>
%}

%%

"int"|"float"|"char"|"if"|"else"|"while"|"return"
        printf("Keyword: %s\n",yytext);

[a-zA-Z_][a-zA-Z0-9_]*
        printf("Identifier: %s\n",yytext);

[ \t\n]+ ;

%%

int main(){ yylex(); }
int yywrap(){ return 1; }
