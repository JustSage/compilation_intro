%%
a*b+ {
    int count_a = 0;
    int count_b = 0;
    for (int i=0;i<yyleng;i++){
        if (yytext[i] == 'a'){
            count_a++;
        }
    }
    for (int j=yyleng-1;j>=0;j--){
        if (yytext[j] == 'b'){
            count_b++;
        }
    }

    if (count_a + 1 <= count_b && count_a * 3 + 1 >= count_b) {
        printf("Yes\n");
    }
}
%%
