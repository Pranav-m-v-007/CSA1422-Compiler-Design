%{
#include <stdio.h>
#include <stdlib.h>

int num1, num2;
char op;
%}

%%

[0-9]+      { num1 = atoi(yytext); }

[+\-*/]     { op = yytext[0]; }

[0-9]+      { 
                num2 = atoi(yytext);
                switch(op){
                    case '+': printf("Result = %d\n", num1+num2); break;
                    case '-': printf("Result = %d\n", num1-num2); break;
                    case '*': printf("Result = %d\n", num1*num2); break;
                    case '/': printf("Result = %d\n", num1/num2); break;
                }
             }

[ \t\n]+    ;

%%

int main(){ yylex(); }
int yywrap(){ return 1; }
