%{
#include <stdio.h>
int validos = 0;
int invalidos = 0;
%}

L        [a-zA-Z]
D        [0-9]
USUARIO  ({L}|{D}|[_+-])+("."({L}|{D}|[_+-])+)*

DOMINIO  ({L}|{D}|-)+
EXT      {L}{L}+
CORREO   {USUARIO}"@"{DOMINIO}("."{EXT})+

%%
{CORREO}         { validos++;   printf("CORREO_VALIDO\t%s\n", yytext); }
[^ \t\r\n]+      { invalidos++; printf("NO_RECONOCIDO\t%s\n", yytext); }
[ \t\r\n]+       ;
%%

int yywrap() { return 1; }

int main()
{
    printf("TOKEN\t\tLEXEMA\n");
    printf("-----\t\t------\n");
    yylex();
    printf("\nCorreos validos  : %d\n", validos);
    printf("No reconocidos   : %d\n", invalidos);
    return 0;
}