%%
b*a* {
    int count_i = 0;
    int count_j = 0;
    int i,j;
    for(i=0; i<yyleng; i++){
        if (yytext[i]== 'b'){
            count_i++;
        }
    }
     for(j=0; j<yyleng; j++){
       if(yytext[j]=='a'){
            count_j++;
        }
    }
    if (count_i % 3 == 0 && (count_j % 4 == count_i % 2)){
        printf("Yes");
    }
}
%%
