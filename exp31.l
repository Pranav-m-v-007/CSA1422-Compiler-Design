%{
#include <stdio.h>
int pos=0,neg=0;
%}

%%

"-"[0-9]+     neg++;
[0-9]+        pos++;

[ \t\n]+      ;

%%

int main(){
    yylex();
    printf("Positive=%d\nNegative=%d\n",pos,neg);
}
int yywrap(){ return 1; }
