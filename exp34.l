%{
#include <stdio.h>
%}

%%

[0-9]+     printf("It is a Digit\n");

.|\n       printf("Not a Digit\n");

%%

int main(){ yylex(); }
int yywrap(){ return 1; }
