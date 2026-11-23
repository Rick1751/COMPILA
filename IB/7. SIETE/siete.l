%{
    /* Ejercicio 3: Identificar operadores aritmeticos (+ - * /)
       y relacionales (< <= > >= == !=) e imprimir el tipo de operador. */
    #include<stdio.h>
    #include<stdlib.h>
%}
%option noyywrap
%%
"+"     printf("OPERADOR ARITMETICO (SUMA): %s\n", yytext);
"-"     printf("OPERADOR ARITMETICO (RESTA): %s\n", yytext);
"*"     printf("OPERADOR ARITMETICO (MULTIPLICACION): %s\n", yytext);
"/"     printf("OPERADOR ARITMETICO (DIVISION): %s\n", yytext);
"<="    printf("OPERADOR RELACIONAL (MENOR O IGUAL): %s\n", yytext);
">="    printf("OPERADOR RELACIONAL (MAYOR O IGUAL): %s\n", yytext);
"=="    printf("OPERADOR RELACIONAL (IGUAL): %s\n", yytext);
"!="    printf("OPERADOR RELACIONAL (DIFERENTE): %s\n", yytext);
"<"     printf("OPERADOR RELACIONAL (MENOR QUE): %s\n", yytext);
">"     printf("OPERADOR RELACIONAL (MAYOR QUE): %s\n", yytext);
[ \t\n]   ;
.       ;
%%
int main(){
    printf("Ingrese una expresion (Ctrl+Z en Windows / Ctrl+D en Linux para terminar):\n");
    yylex();
    return 0;
}
