1. How to compile and execute
- ./make.sh tinyBasic
- ./a.out

2. Execute
After type “ ./a.out ”, you can type the date into screen.
After type a line, press control c to terminate.
And then execute again with “./a.out”. If you type two line consecutively, it may have error.
Mostly, it parses correctly. “IF” command sometimes work and sometimes does not work.

3. I make flex file for question 3.
It can be executed like below
- flex Q3.l
- g++ lex.yy.c –lfl –o asdf
- ./asdf
Then type “IF” or other commands.
