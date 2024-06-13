#include <stdio.h>

int main(){
    int percent;
    float novo, reajuste, sal;
    scanf("%f", &sal);
    if(sal <= 400){
        percent = 15;
    }
    else{
        if(sal <= 800){
            percent = 12;
        }
        else{
            if(sal<= 1200){
                percent = 10;
            }
            else{
                if(sal<= 2000){
                    percent = 7;
                }
                else{
                    percent = 4;
                }
            }
        }
    }
    reajuste = (sal * percent) / 100;
    novo = sal + reajuste;
    printf("Novo salario: %.2f\n", novo);
    printf("Reajuste ganho: %.2f\n", reajuste);
    printf("Em percentual: %d %%\n", percent);
    return 0;
}
