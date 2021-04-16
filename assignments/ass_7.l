%%
[0-9]+ {
    int min = 65; // A
    int max = 90; // Z
    int num = atoi(yytext); // converts string to integer.
    int temp = num;
    int integers[yyleng];

    // inserting the given number to an array in the right order.
    for (int i=yyleng-1;i>=0;i--){
        integers[i] = temp % 10;
        temp /= 10;
    }

    // traversing the array of integers.
    for (int i=0; i<yyleng-1;i++){
        // taking pairs of digits from the array.
        int asAscii = integers[i]*10+integers[i+1];
        // if the number above is in uppercase letter ascii range...
        if (min <= asAscii && asAscii <= max){
            // print the numberic lowercase representation.
            printf("%d -> %c -> %c -> %d\n", asAscii, asAscii, asAscii +32, asAscii + 32);
            //printf("%d", asAscii + 32);
            i++;
        }
    }
}
%%
