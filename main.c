#include <stdio.h>
#include "myMath.h"


int main(){
    double x = 0;
    int c = 0;
    ////////////////////////////////////
    /// f(x) = e^x + x^3 - 2

    printf("please insert a real number : ");
    while (scanf("%lf", &x) != 1) {
        while ((c = getchar()) != '\n');
        ungetc(c, stdin);
        printf("You must enter a valid number. Try again.\n");
        continue;
    }
    // honestly its easier to write : answer = Exp(X) + Power(x,3) - 2
    // but i bet i must use sub and add...
    double answer = sub(add(Exponent(x),Power(x, 3)), 2);
    printf("the value of f(x) = e^x + x^3 - 2  is : %.04lf\n", answer);


    ////////////////////////////////////
    /// f(x) = 3x + 2x^2
    printf("please insert a real number : ");
    while (scanf("%lf", &x) != 1) {
        while ((c = getchar()) != '\n');
        ungetc(c, stdin);
        printf("You must enter a valid number. Try again.\n");
        continue;
    }
    answer = add(mul(x, 3),mul(Power(x, 2) , 2));
    printf("the value of f(x)= 3x + 2x^2  is : %.04lf\n", answer);


    ////////////////////////////////////
    /// f(x) = (4x^3)/5 - 2x
    printf("please insert a real number : ");
    while (scanf("%lf", &x) != 1) {
        while ((c = getchar()) != '\n');
        ungetc(c, stdin);
        printf("You must enter a valid number. Try again.\n");
        continue;
    }
    double x3 = mul(Power(x, 3), 4);
    answer = sub(div(x3, 5), mul(x, 2));
    printf("the value of f(x) = (4x^3)/5 - 2x  is : %.04lf\n", answer);
    return 0;
}