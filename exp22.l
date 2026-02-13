%{
#include <stdio.h>
int comment_lines=0;
FILE *out;
%}

%%

"//".*\n          { comment_lines++; }
"/*"([^*]|\*+[^*/])*\*+"/"   { comment_lines++; }

.*\n              { fprintf(out,"%s",yytext); }

%%

int main(int argc,char *argv[])
{
    if(argc>2){
        yyin=fopen(argv[1],"r");
        out=fopen(argv[2],"w");
    }

    yylex();
    printf("Comment Lines: %d\n",comment_lines);
    return 0;
}

int yywrap(){ return 1; }
