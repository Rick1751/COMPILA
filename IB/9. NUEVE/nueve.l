%{
    /* Ejercicio 5: Contar cuantas veces aparece cada digito (0-9)
       en la entrada y mostrar una tabla al final. */
    #include<stdio.h>
    #include<stdlib.h>
    int contador[10] = {0};
%}
%option noyywrap
%%
[0-9]   contador[yytext[0] - '0']++;
.|\n    ;
%%
int main(){
    int i;
    printf("Ingrese un texto (Ctrl+Z en Windows / Ctrl+D en Linux para terminar):\n");
    yylex();
    printf("\n+--------+----------+\n");
    printf("| DIGITO | CANTIDAD |\n");
    printf("+--------+----------+\n");
    for(i = 0; i < 10; i++){
        printf("|   %d    |   %4d   |\n", i, contador[i]);
    }
    printf("+--------+----------+\n");
    return 0;
}
