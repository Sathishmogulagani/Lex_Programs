%{
#include<stdio.h>
#include<string.h>
int lc=0,cc=0;
%}

%%
[\n] {lc++;}
. {cc++;}
%%

int main()
{
yylex();
printf("%d",lc);
printf("%d",cc);
return 0;
}

int yywrap(void)
{
return 1;
}

