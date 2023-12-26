%{
#include<stdio.h>
#include<stdlib.h>
%}
%token NUM NL
%left '+' '-'
%left '*' '/'

%%
S:E NL {printf("Resukt :%d\n",$1);exit(0);}
E:E '+' E {$$=$1+$3;}
 |E '-' E {$$=$1-$3;}
 |E '*' E {$$=$1*$3;}
 |E '/' E {$$=$1/$3;}
 |NUM {$$=S1;}
 ;
%%

void yyerror(char *msg)
{exit(0);}
int main()
{
printf("\n Enter input:");
yyparser();
return 0;
}
int yywrap()
{
return 1;
}
