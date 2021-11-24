#!/bin/bash

echo "rodando bison ..."
bison -d parser.y

echo "rodando flex ..."
flex lexer.l

echo "gerando o compilador cm para C-v1.0" 
echo
cc -o cm lex.yy.c parser.tab.c

echo "compilador cm criado." 
echo
echo "atenção: use o script run.sh, com dois argumentos, para executar o compilador cm:" 
echo
echo "./run.sh mult.c mult.out" 
echo

