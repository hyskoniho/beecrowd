#include <stdio.h>

int main(){
    int cod, quant = 0;
    double valor = 0;
    scanf("%d %d", &cod, &quant);
    switch(cod){
        case 1 : valor = quant * 4.00;
                break;
        case 2 : valor = quant * 4.50;
                break;
        case 3 : valor = quant * 5.00;
                break;
        case 4 : valor = quant * 2.00;
                break;
        case 5 : valor = quant * 1.50;
                break;
    }
    printf("Total: R$ %.2lf\n", valor);
    return 0;
}
