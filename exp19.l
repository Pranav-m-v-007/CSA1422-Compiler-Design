%{
#include <stdio.h>
%}

%%

"<"[^>]+">"      printf("HTML Tag: %s\n", yytext);

%%

int main(int argc,char *argv[])
{
    if(argc>1)
        yyin=fopen(argv[1],"r");
    yylex();
    return 0;
}

int yywrap(){ return 1; }
