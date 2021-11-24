%option noyywrap yylineno
%{ 
#include "parser.tab.h" 
%}

%%

"//".*                      { /* no action */ }
else                        { return KEY; }
if                          { return KEY; }
int                         { return KEY; }
return                      { return KEY; }
void                        { return KEY; }
while                       { return KEY; }
[A-Za-z]([A-Za-z]|[0-9])*   { return ID; }
[0-9]+                      { return NUM; }
("+"|"-"|"*"|"/")           { return SYM; }
("="|"<"|">")               { return SYM; }
("<="|">="|"=="|"!=")       { return SYM; }
(";"|",")                   { return SYM; }
("("|")"|"["|"]"|"{"|"}")   { return SYM; }
[ \t\n]                       { /* no action */ }
.                           { return ERROR; }


%%

int main(int argc, char **argv) {
    int token;

    while ((token = yylex())) {
        switch (token) {
         case ERROR:
            printf("(%d,ERROR,\"%s\")\n", yylineno, yytext);
            break;
         case NUM: 
            printf("(%d,NUM,\"%s\")\n", yylineno, yytext);
            break; 
         case ID: 
            printf("(%d,ID,\"%s\")\n", yylineno, yytext);
            break;
         case KEY:
            printf("(%d,KEY,\"%s\")\n", yylineno, yytext);
            break;
         case SYM: 
            printf("(%d,SYM,\"%s\")\n", yylineno, yytext);
            break;
        }
    }
}

