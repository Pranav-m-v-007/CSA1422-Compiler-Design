%{
#include <stdio.h>
%}

%%

(0[1-9]|[12][0-9]|3[01])"/"(0[1-9]|1[0-2])"/"(19|20)[0-9]{2}
        printf("Valid DOB\n");

.|\n   printf("Invalid DOB\n");

%%

int main(){ yylex(); }
int yywrap(){ return 1; }
