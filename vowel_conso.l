%{
#include<stdio.h>
int v=0,c=0;
%}

%%
[aeiouAEIOU] {v++;}
[a-zA-Z^aeiouAEIOU] {c++;}
[\n] {printf("%d vowel %d conso",v,c);}
%%

int main()
{
printf("zsdfd");
yylex();
}

int yywrap()
{
return 1;
}