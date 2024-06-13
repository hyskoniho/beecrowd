#include <stdio.h>

int main(){
    int num, hora = 0;
    double valor, salario = 0;
    scanf("%d %d %lf", &num, &hora, &valor);
    salario = valor * hora;
    printf("NUMBER = %d\n", num);
    printf("SALARY = U$ %.2lf\n", salario);
    return 0;
}
