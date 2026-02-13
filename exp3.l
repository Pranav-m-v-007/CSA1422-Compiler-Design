%{
#include <stdio.h>
%}

%%

"+"     printf("Valid operator: +\n");
"-"     printf("Valid operator: -\n");
"*"     printf("Valid operator: *\n");
"/"     printf("Valid operator: /\n");

.       printf("Invalid operator\n");

%%

int main() {
    yylex();
    return 0;
}

int yywrap() {
    return 1;
}
