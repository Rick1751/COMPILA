%{
#include <stdio.h>
%}

L    [a-zA-Z_]
D    [0-9]
ID   {L}({L}|{D})*
NUM  {D}+

%%
"if"|"else"|"while"|"int"   { printf("PALABRA_RESERVADA\t%s\n", yytext); }
{ID}                        { printf("IDENTIFICADOR\t\t%s\n", yytext); }
{NUM}                       { printf("ENTERO\t\t\t%s\n", yytext); }
{D}[a-zA-Z0-9_.]*           { printf("NO_RECONOCIDO\t\t%s\n", yytext); }
"."{D}[a-zA-Z0-9_.]*        { printf("NO_RECONOCIDO\t\t%s\n", yytext); }
[ \t\r\n]+                  ;
.                           { printf("NO_RECONOCIDO\t\t%s\n", yytext); }
%%

int yywrap() { return 1; }

int main()
{
    printf("TOKEN\t\t\tLEXEMA\n");
    printf("-----\t\t\t------\n");
    yylex();
    return 0;
}