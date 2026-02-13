%{
#include <stdio.h>
%}

DIGIT   [0-9]
LETTER  [a-zA-Z]

%%

"#include".*      printf("Header: %s\n",yytext);
"int"|"void"      printf("Keyword: %s\n",yytext);

{LETTER}({LETTER}|{DIGIT})*  
                  printf("Identifier: %s\n",yytext);

{DIGIT}+          printf("Number: %s\n",yytext);

"(" | ")" | "{" | "}" | "," | ";" 
                  printf("Special Symbol: %s\n",yytext);

"+"|"-"|"*"|"/"|"=" 
                  printf("Operator: %s\n",yytext);

[ \t\n]+          ;

.                 printf("Unknown: %s\n",yytext);

%%

int main(int argc,char *argv[]){
    if(argc>1) yyin=fopen(argv[1],"r");
    yylex();
}
int yywrap(){ return 1; }
