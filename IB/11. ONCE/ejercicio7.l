
%option noyywrap

%{
#include <stdio.h>
#include <stdlib.h>
%}

%%
[01]+ {
    unsigned long long valor = strtoull(yytext, NULL, 2);

    printf("Binario: %s\n", yytext);
    printf("Decimal: %llu\n\n", valor);
}

[ \t\n]+ {
    /* Ignorar espacios */
}

[^ \t\n]+ {
    printf("Numero binario no valido: %s\n", yytext);
}
%%

int main() {
    printf("Ingrese numeros binarios:\n");
    yylex();
    return 0;
}

