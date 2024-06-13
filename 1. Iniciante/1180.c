#include <stdio.h>

int main(){
    int n, i, pos;
    scanf("%d", &n);
    int x[n];
    for(i=0;i<n;i++){
        scanf("%d", &x[i]);
    }
    int menor = x[n-1];
    for(i=0;i<n;i++){
        if(x[i] < menor){
            menor = x[i];
            pos = i;
        }
    }
    printf("Menor valor: %d\n", menor);
    printf("Posicao: %d\n", pos);
    return 0;
}
