%{
#include <stdio.h>
int c=0,w=0,l=0;
%}

%%

\n      { l++; }
[ \t]+  ;
[^ \t\n]+ { w++; c+=yyleng; }

%%

int main(){
    yylex();
    printf("Characters=%d\nWords=%d\nLines=%d\n",c,w,l);
}

int yywrap(){ return 1; }
