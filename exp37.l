%{
#include <stdio.h>
int max = 0;
%}

%%

[a-zA-Z]+   {
                if(yyleng > max)
                    max = yyleng;
            }

%%

int main(){
    yylex();
    printf("Length of Longest Word = %d\n", max);
}

int yywrap(){ return 1; }
