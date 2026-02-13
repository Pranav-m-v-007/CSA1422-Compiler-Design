%{
#include <stdio.h>

int chars = 0, words = 0, lines = 0;
%}

%%

"//".*                        ;   /* Ignore single-line comment */
"/*"([^*]|\*+[^*/])*\*+"/"     ;   /* Ignore multi-line comment */

[ \t]+                        ;   /* Ignore spaces & tabs */

\n                            { lines++; }

[a-zA-Z0-9_]+                 { words++; chars += yyleng; }

.                             { chars++; }

%%

int main(int argc, char *argv[])
{
    if(argc > 1)
        yyin = fopen(argv[1], "r");

    yylex();

    printf("Characters: %d\n", chars);
    printf("Words: %d\n", words);
    printf("Lines: %d\n", lines);

    return 0;
}

int yywrap() { return 1; }
