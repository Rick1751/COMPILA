%{
    #include<stdlib.h>
%}
%%
[0-9]+  printf("NUMERO \n");
[a-zA-Z][a-zA-Z0-9]*    printf("IDENTIFICADOR \n");
%%
