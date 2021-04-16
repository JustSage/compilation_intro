%%
[a-z] printf("char %c\n", yytext[0] + ('A' - 'a'));
[A-Z] printf("char %c\n", yytext[0] - ('A' - 'a'));
[A-Z]?[a-z]+ printf("word %s %d\n", yytext, yyleng);
[+]?[0-9]*\.[0-9]+([eE][+-][0-9]+) printf("positive expo\n");
[-]?[0-9]*\.[0-9]+([eE][+-][0-9]+) printf("negative expo\n");
[+]?[1-9][0-9]* printf("positive integer\n");
[-][1-9][0-9]* printf("negative integer\n");
[+]?[0-9][1-9]*[.][0-9]+ printf("positive float\n");
[-][0-9][1-9]*[.][0-9]+ printf("negative float\n")
[a-zA-Z0-9]+ printf("string\n");
[ ] printf("");
\n ;
.  ;
%%
