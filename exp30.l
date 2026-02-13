%{
#include <stdio.h>
%}

%%

[0-9]+     printf("Number: %s\n",yytext);
[a-zA-Z]+  printf("Word: %s\n",yytext);

[ \t\n]+   ;

%%

int main(){ yylex(); }
int yywrap(){ return 1; }
