%{
#include <iostream>
using namespace std;
#define YY_DECL extern "C" int yylex()
%}
%%

PRINT|IF|THEN|GOTO|INPUT|LET|GOSUB|RETURN|CLEAR|LIST|RUN|END { cout << "Found Keywords:" << yytext << endl; }

[\r] { cout << "Found CR: " << yytext << endl; }

[<>=] { cout << "Found RELOP: " << yytext << endl; } 

[0-9]+ { cout << "Found a DIGIT: " << yytext << endl; }

[*/] { cout << "Found a MULDIV: " << yytext << endl; }

[+-] { cout << "Found a PLUMIN: " << yytext << endl; }

[A-Z] { cout << "Found a VAR: " << yytext << endl; }

[,] { cout << "Found a COMMA: " << yytext << endl; }

["][0-9a-zA-Z_ ]+["] { cout << "Found a STRING: " << yytext << endl; }

[(] { cout << "Found a LPAREN: " << yytext << endl; }

[)] { cout << "Found a RPAREN: " << yytext << endl; }	
%%
int main(int, char**) {
	// lex through the input:
	yylex();
}