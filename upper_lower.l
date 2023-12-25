%{
#include<stdio.h>
%}

%%
[A-Z]+[\n\t ] {printf("\n %s is upper",yytext);}
[a-z]+[\n\t ] {printf("\n %s is lower",yytext);}
[A-Z][a-z]+  {printf("\n %s is Uppercombo",yytext);}
[a-z][A-Z]+  {printf("\n %s is lowercombo",yytext);}
. ; 
%%

int main()
{
printf("dfsd");
yylex();
}
int yywrap()
{
return 0;}