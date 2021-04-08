%{
#include <iostream>
#include <stdlib.h>
#include "prac.tab.h"  /* We want the tokens defined in calc1.y. */
%}

%option noyywrap

%%

            /* 'val' in 'yylval.val' is the field declared in
                           calc1.y with the %union directive. */

PRINT {return Print; }
CLEAR {return Clear;}

[+-] { return PLUMIN; }

["][0-9a-zA-Z_ ]+["] { return STRING; }

[A-Z] { return VAR; }

[,] { return COMMA; }


[\r] { return CR ; }

[0-9]+                  { yylval.val = atoi(yytext); return Digit; }

[ \t]+              { /* Ignore white characters. */ }

.                       { std::cerr << "Invalid token" << std::endl; exit(1); }

%%