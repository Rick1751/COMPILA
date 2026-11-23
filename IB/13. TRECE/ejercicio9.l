
%option noyywrap

%{
#include <stdio.h>

int espera_elemento = 1;
int hay_elementos = 0;
int error = 0;
%}

IDENTIFICADOR [a-zA-Z_][a-zA-Z0-9_]*
ENTERO [0-9]+

%%
{IDENTIFICADOR} {
    if (espera_elemento) {
        printf("Identificador valido: %s\n", yytext);
        espera_elemento = 0;
        hay_elementos = 1;
    } else {
        printf("Error: falta una coma antes de %s\n", yytext);
        error = 1;
    }
}

{ENTERO} {
    if (espera_elemento) {
        printf("Numero entero valido: %s\n", yytext);
        espera_elemento = 0;
        hay_elementos = 1;
    } else {
        printf("Error: falta una coma antes de %s\n", yytext);
        error = 1;
    }
}

"," {
    if (espera_elemento) {
        printf("Error: coma inesperada\n");
        error = 1;
    } else {
        espera_elemento = 1;
    }
}

[ \t\n]+ {
    /* Ignorar espacios */
}

. {
    printf("Error: token no valido: %s\n", yytext);
    error = 1;
}

<<EOF>> {
    if (!hay_elementos) {
        printf("Error: lista vacia\n");
        error = 1;
    } else if (espera_elemento) {
        printf("Error: falta un elemento despues de la coma\n");
        error = 1;
    }

    if (error) {
        printf("\nLista procesada con errores.\n");
    } else {
        printf("\nLista procesada correctamente.\n");
    }

    return 0;
}
%%

int main() {
    printf("Ingrese una lista separada por comas:\n");
    yylex();
    return 0;
}
