%{
#include <stdio.h>
%}

DIGIT   [0-9]

%%

{DIGIT}+(\.{DIGIT}+)?      printf("Constant: %s\n", yytext);

%%

int main(int argc,char *argv[])
{
    if(argc>1)
        yyin=fopen(argv[1],"r");
    yylex();
    return 0;
}

int yywrap(){ return 1; }
