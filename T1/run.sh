#!/bin/bash
echo
echo "> executando compilador cm com entrada $1 e saída $2 ..." 
./cm < $1 > $2

echo
echo "> saída está no arquivo $2 para programa $1 (em C-v1.0): " 
echo
cat $2
echo


