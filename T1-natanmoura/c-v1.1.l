/* 
 * Definição flex.
 * Autor: Natan Moura
 */

%option noyywrap nodefault yylineno

%{
#include "c-v1.1.tab.h"
%}

%%

"//".*                { /* void */ }

const                 { return KEY; }
else                  { return KEY; }
for                   { return KEY; }
if                    { return KEY; }
int                   { return KEY; }
return                { return KEY; } 
void                  { return KEY; }
while                 { return KEY; }

[0-9]+                { return NUM; }

[a-zA-Z][a-zA-Z0-9_]* { return ID; }

"+"                   { return SYM; }    
"-"                   { return SYM; }    
"/"                   { return SYM; }    
"*"                   { return SYM; }    
";"                   { return SYM; }    
"("                   { return SYM; }    
")"                   { return SYM; }    
"="                   { return SYM; }    
"{"                   { return SYM; }    
"}"                   { return SYM; }    
"<"                   { return SYM; }    
"<="                  { return SYM; }    
">"                   { return SYM; }    
">="                  { return SYM; }    
"=="                  { return SYM; }    
","                   { return SYM; }    
"["                   { return SYM; }    
"]"                   { return SYM; }    
"!="                  { return SYM; }    

[ \n\t\r]+            { }
.                     {return ERROR;}

%%

int main(int argc, char **argv) {
    int token;

    char *token_name[5] = {"KEY", "NUM", "ID","SYM","ERROR"};

    while ((token = yylex())) {
       fprintf(stdout,"(%d", yylineno);
       fprintf(stdout,",%s", token_name[token-258]);
       fprintf(stdout,",\"%s\")\n", yytext);
    }
}
