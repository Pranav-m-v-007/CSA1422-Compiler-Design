%{
#include <stdio.h>
%}

%%

(https?|ftp)://[a-zA-Z0-9.-]+\.[a-zA-Z]{2,}(/[a-zA-Z0-9._/?=&%-]*)?  
        printf("Valid URL\n");

.|\n   printf("Invalid URL\n");

%%

int main(){ yylex(); }
int yywrap(){ return 1; }
