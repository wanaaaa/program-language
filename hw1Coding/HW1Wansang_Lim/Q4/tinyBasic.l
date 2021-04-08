%{
#include <iostream>
#include <stdlib.h>
#include "tinyBasic.tab.h"  /* We want the tokens defined in calc1.y. */
%}

%option noyywrap

%%

            /* 'val' in 'yylval.val' is the field declared in
                           calc1.y with the %union directive. */

PRINT {return Print; }
CLEAR {return Clear;}
GOTO {return Goto;}
IF {return If;}
THEN {return Then; }
INPUT {return Input; }
LET {return Let; }
GOSUB {return Gosub;}
RETURN {return Return;}
LIST {return List;}
RUN {return Run;}
END {return End;}

[=] {return Equal; }

[+-] { return PLUMIN; }

["][0-9a-zA-Z_ ]+["] { return STRING; }

[A-Z] { return VAR; }

[,] { return COMMA; }

[*/] { return MULDIV; }

[(] { return LPAREN; }

[)] { return RPAREN; }	

[<>=] { return RELOP; } 

[\n] {return NewLine;}

[\r] { return CR ; }

[0-9]+                  { yylval.val = atoi(yytext); return Digit; }

[ \t\r\n]+              { /* Ignore white characters. */ }

.                       { std::cerr << "Invalid token" << std::endl; exit(1); }

%%