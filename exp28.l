%{
#include <stdio.h>
int v=0,c=0;
%}

%%

[aeiouAEIOU]     v++;
[b-df-hj-np-tv-zB-DF-HJ-NP-TV-Z]  c++;

%%

int main(){
    yylex();
    printf("Vowels=%d\nConsonants=%d\n",v,c);
}
int yywrap(){ return 1; }
