%{
#include <stdio.h>
#include <string.h>

char oldw[50], neww[50];
%}

%%

[a-zA-Z]+   {
                if(strcmp(yytext, oldw)==0)
                    printf("%s", neww);
                else
                    printf("%s", yytext);
            }

.|\n        printf("%s", yytext);

%%

int main(){
    printf("Word to replace: ");
    scanf("%s", oldw);
    printf("Replace with: ");
    scanf("%s", neww);
    getchar();
    yylex();
}

int yywrap(){ return 1; }
