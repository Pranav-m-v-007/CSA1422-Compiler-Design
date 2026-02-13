%{
#include <stdio.h>
%}

%%

^[aeiouAEIOU][a-zA-Z]*     printf("Valid (Starts with Vowel)\n");

.*                         printf("Invalid\n");

%%

int main(){ yylex(); }
int yywrap(){ return 1; }
