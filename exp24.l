%{
#include <stdio.h>
%}

%%

[a-zA-Z0-9._%+-]+@[a-zA-Z0-9.-]+\.[a-zA-Z]{2,} 
        printf("Valid Email\n");

.|\n    printf("Invalid Email\n");

%%

int main(){ yylex(); }
int yywrap(){ return 1; }
