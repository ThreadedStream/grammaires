%{
#include "grammaire.tab.h"
float yyfval = 0.0;
%}


INTEGER [0-9]+
HEX_INTEGER 0x[0-9a-fA-F]+


%%
"+"		{ return ADD; }
"-" 		{ return SUB; }
"*" 		{ return MUL; }
"/" 		{ return DIV; }
"|" 		{ return ABS; }
"(" 		{ return OPEN_PAREN; }
")" 		{ return CLOSE_PAREN; }
{INTEGER}  	{ yylval = strtol(yytext, NULL, 10); return NUMBER; } 
{HEX_INTEGER} 	{ yylval = strtol(yytext, NULL, 16); return NUMBER; }
\n		{ return EOL; }
[ \t]		{ }
. 		{ printf("Unknown character %c\n", *yytext); }
%%
