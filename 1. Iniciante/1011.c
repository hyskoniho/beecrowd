#include <stdio.h>
#include <math.h>

int main(){
    double v = 0, r = 0;
    scanf("%lf", &r);
    v = (4.0/3) * 3.14159 * pow(r, 3);
    printf("VOLUME = %.3lf\n", v);
    return 0;
}