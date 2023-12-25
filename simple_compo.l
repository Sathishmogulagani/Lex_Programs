%{
#include<stdio.h>
int flag=0;
%}

%%
and |
or |
because |
but |
if |
then {flag=1;}
[\n] {(flag)?printf("c"):printf("s");flag=0;}
%%

int main()
{
printf("\nenter data:");
yylex();
}
int yywrap(){return 1;}