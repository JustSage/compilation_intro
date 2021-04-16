%%
a*b*c*d* {
    int counters[] = {0,0,0,0};
    char chars[] = {'a','b','c','d'};
    int k = 0;
    int m = 0;

    for (int i = 0; i < sizeof(chars); i++){
        // traversing the string.
        for(int j = 0; j < yyleng; ++j){
            if(yytext[j] == chars[k]){
                counters[m]++;
            }
        }
        // incrementing the char array/counter array according to the language.
        ++k;
        ++m;
    }

    // checking if a^i = b^(2i*0.5) and c^3j = d^(2j*1.5)
    if ((counters[0] == counters[1]*0.5) && (counters[2] == counters[3]*1.5)){
                printf("Yes");
    }
}

%%


