%{
#include<stdio.h>
int sc=0,mc=0;
%}

%%
"//"[a-zA-Z]* {sc++;}
"/*"[a-zA-Z\n\t ]*"*/" {mc++;}
%%

int main()
{
printf("data :\n");
yylex();
printf("%d sc \t %d mc",sc,mc);
}

int yywrap()
{
return 1;
}