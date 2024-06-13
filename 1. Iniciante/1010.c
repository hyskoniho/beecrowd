#include <stdio.h>

int main(){
    int np1, np2, qnt1, qnt2 = 0;
    double vu1, vu2, vt = 0;
    scanf("%d %d %lf", &np1, &qnt1, &vu1);
    scanf("%d %d %lf", &np2, &qnt2, &vu2);
    vt = (qnt1 * vu1) + (qnt2 * vu2);
    printf("VALOR A PAGAR: R$ %.2lf\n", vt);
    return 0;
}
