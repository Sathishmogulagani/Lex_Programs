%{
#include<stdio.h>
int length=0;
%}

%%
[a-z A-Z 0-9]+ {length=yyleng;}
%%

int main()
{
printf("ip:\n");
yylex();
printf("length ::::::%d",length);
return 0;
}

int yywrap()
{
return 1;
}