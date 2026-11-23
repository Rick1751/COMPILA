%{
#include <stdio.h>

int mayusculas = 0;
int minusculas = 0;
int digitos    = 0;
int espacios   = 0;
int otros      = 0;
%}

%%
[A-Z]       { mayusculas++; }
[a-z]       { minusculas++; }
[0-9]       { digitos++; }
[ \t\n\r]   { espacios++; }
.           { otros++; }
%%

int yywrap() { return 1; }

int main()
{
    yylex();

    printf("Letras mayusculas : %d\n", mayusculas);
    printf("Letras minusculas : %d\n", minusculas);
    printf("Digitos           : %d\n", digitos);
    printf("Espacios en blanco: %d\n", espacios);
    printf("Otros caracteres  : %d\n", otros);
    printf("Total             : %d\n",
           mayusculas + minusculas + digitos + espacios + otros);
    return 0;
}