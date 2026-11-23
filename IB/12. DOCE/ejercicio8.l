
%option noyywrap

%{
#include <stdio.h>
#include <stdlib.h>
%}

%%
0[xX][0-9A-Fa-f]+ {
    unsigned long long valor = strtoull(yytext + 2, NULL, 16);

    printf("Hexadecimal: %s\n", yytext);
    printf("Decimal: %llu\n\n", valor);
}

[ \t\n]+ {
    /* Ignorar espacios */
}

[^ \t\n]+ {
    printf("Hexadecimal no valido: %s\n", yytext);
}
%%

int main() {
    printf("Ingrese numeros hexadecimales:\n");
    yylex();
    return 0;
}
