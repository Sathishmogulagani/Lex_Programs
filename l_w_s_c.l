%{
#include<stdio.h>
int l=0, w=0, s=0, c=0;
%}

%%
[a-z] {c++;}
[a-z]+ {w++;}
[\n] {l++;}
[ ] {s++;}
%%

int main() {
printf("f");
yylex();
printf("%d %d %d %d",l,w,s,c);
}

int yywrap() {
return 1;
}
