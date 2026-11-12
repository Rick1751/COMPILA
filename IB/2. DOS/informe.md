# Informe de ejercicio 2

# Que es lex?
Es un generador de analizadores
lexicos que trabaja con un motor de automatas por debajo

# Entender el comportamiento por defecto de lex

Generador de automatas, por defecto imprime en la pantalla el texto ingresado
sino coincide con los patrones

%{%}: sirve para delimitar el codigo lex del codigo c

%% -> %%: Primer y segundo separador en donde se define el codigo lex, aqui se 
definen los reconocimientos y que hacer con ellos en {}

## Comandos
## Manejo rapido de archivos

- uno.l : Archivo principal
- lex uno.l : para generar el archivo lex.yy.c
- compilar: gcc lex.yy.c -lfl
- ejecutar: ./a.out
- para mandar ./a.out < entrada.txt

## Notas rapidas

Ctrl + c: mata el proceso
Ctrl + d: continua el proceso
Ctrl + z: suspende el proceso y sigue en segundo plano y luego fg para volver al programa