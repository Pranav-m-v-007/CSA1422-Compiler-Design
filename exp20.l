%{
#include <stdio.h>
int line=1;
%}

%%

^              { printf("%d ", line++); }

.*\n           { printf("%s", yytext); }

%%

int main(int argc,char *argv[])
{
    if(argc>1)
        yyin=fopen(argv[1],"r");
    yylex();
    return 0;
}

int yywrap(){ return 1; }
