%{
#include<stdio.h>
%}

%%
>=|<= {printf("yes");}
. {printf("NO");}
%%

int main()
{
printf("ok ra\n");
yylex();
return 0;}

int yywrap()
{
return 1;
}