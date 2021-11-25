# T1

Instruções para construir analisador léxico para C-v1.1 
a partir do código da versão C-v1.0 (2020).


- Copie o arquivo lexer.l (especificação da versão 2020 C-v1.0) para o arquivo c-v1.1.l.
- Explore o código e faça adaptações necessárias no arquivo c-v1.1.l, para incluir novos aspectos léxicos da versão nova C-v1.1, segundo as especificações na pasta.
- Use o script compile.sh, sem argumentos, para rodar flex, bison e gerar o analisador léxico __cm__ para a linguagem C-v1.1.
- Use o script run.sh, que recebe dois argumentos: mult.in e mult.out, para fazer a análise léxica do programa mult.in, e ver a saída em mult.out.
- Use o script run.sh com os casos de teste em /tests, lembrando sempre que o segundo argumento deve ter o nome do arquivo de entrada com extensão .out.

