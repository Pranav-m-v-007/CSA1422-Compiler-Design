%{
#include <stdio.h>
%}

%%

[A-Z]+      printf("Capital Word: %s\n",yytext);

%%

int main(){ yylex(); }
int yywrap(){ return 1; }
