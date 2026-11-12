%{
    #include<stdlib.h>
    #include<stdio.h>
    #include<string.h>
    int numlin=0, numcar=0; 
%}

%%
[\n]    numlin++;
.       numcar++;
%%

int main(){
    yylex();
    printf("Número de líneas %d\n", numlin);
    printf("Número de caracteres %d\n",numcar);
    return 0;
}
