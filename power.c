#include "myMath.h"

double Exponent(int x){
    return Power(EXP, x);
}

double Power(double x , int y){
    if(x == 0){
        return 0;
    }
    if(y == 0){
        return 1;
    }

    if(y > 0){
        double n = 1;
        for(int i = 0; i < y; i++){
            n *= x;
        }
        return n;
    }else{
        double n = 1;
        for(int i = 0; i > y; i--){
            n /= x;
        }
        return n;
    }
}