%{
#include <stdlib.h>
#include <stdio.h>

void yyerror(const char* msg) {
      fprintf(stderr, "%s\n", msg);
}

int yylex();
%}

%token ERROR
%token ID
%token KEY
%token NUM
%token SYM

%%

program
: /* empty */
;

%%


