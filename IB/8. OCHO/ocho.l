%{
    /* Ejercicio 4: Convertir todas las letras mayusculas a minusculas,
       dejando el resto igual (normalizacion lexica). */
    #include<stdio.h>
    #include<stdlib.h>
%}
%option noyywrap
%%
[A-Z]   printf("%c", yytext[0] + 32);
.|\n    ECHO;
%%
int main(){
    printf("Ingrese un texto (Ctrl+Z en Windows / Ctrl+D en Linux para terminar):\n");
    yylex();
    return 0;
}
