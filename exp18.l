%{
#include <stdio.h>
int macros=0, headers=0;
%}

%%

"#define".*           { macros++; }
"#include"<[^>]+>     { headers++; }

%%

int main(int argc,char *argv[])
{
    if(argc>1)
        yyin=fopen(argv[1],"r");
    yylex();
    printf("Macros: %d\n",macros);
    printf("Header Files: %d\n",headers);
    return 0;
}

int yywrap(){ return 1; }
