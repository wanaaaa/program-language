%{
#include <iostream>

int yylex(); // A function that is to be generated and provided by flex,
             // which returns a next token when called repeatedly.
int yyerror(const char *p) { std::cerr << "error: " << p << std::endl; };
%}

%union {
    int val;
    /* You may include additional fields as you want. */
    /* char op; */
};

%start program 

%token LPAREN RPAREN
%token PLUS MINUS MUL DIV
%token <val> NUM    /* 'val' is the (only) field declared in %union
                       which represents the type of the token. */

%type <val> expr term factor

%%

prog : expr                             { std::cout << $1 << std::endl; }
     ;

expr : expr PLUS term                   { $$ = $1 + $3; }
     | expr MINUS term                  { $$ = $1 - $3; }
     | term                             /* default action: { $$ = $1; } */
     ;

term : term MUL factor                  { $$ = $1 * $3; }
     | term DIV factor                  { $$ = $1 / $3; }
     | factor                           /* default action: { $$ = $1; } */
     ;

factor : NUM                            /* default action: { $$ = $1; } */
       | LPAREN expr RPAREN             { $$ = $2; }
       ;

%%

int main()
{
    yyparse(); // A parsing function that will be generated by Bison.
    return 0;
}