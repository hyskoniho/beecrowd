#include <stdio.h>
#include <math.h>

int main(){
    int i, x, r;
    scanf("%d", &x);
    for(i=2;i<=x;i+=2){
        r = pow(i,2);
        printf("%d^2 = %ld\n", i, r);
    }
    return 0;
}
