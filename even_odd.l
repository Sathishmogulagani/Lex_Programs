%{
#include<stdio.h>
int i;
%}

%%
[0-9]+ {i=atoi(yytext);
if(i%2==0)
printf("e");
else
printf("o");
}
%%

int main()
{
printf("sathish");
yylex();
return 1;
}

int yywrap()
{
return 0;
}