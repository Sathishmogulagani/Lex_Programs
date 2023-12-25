%{
#include<stdio.h>
int k,n,w;
%}

%%
if |
else |
break |
elseif |
int {k++;printf("%s is keyword::",yytext);}
[0-9]* {n++;printf("%s is number",yytext);}
[a-zA-Z]+ {w++;printf("%s is word",yytext);}
. {printf("k%d n%d w%d",k,n,w);}
%%

int main()
{
printf("ip please::::\n");
yylex();
return 0;
}

int yywrap()
{
return 1;}