#include <stdio.h>

int main(){
    int m, n, soma=0, f, i;
    scanf("%d %d", &m, &n);
    while(m > 0 && n > 0){
        if(n>m){
            f = m;
            m = n;
            n = f;
        }
        for(i=n;i<=m;i++){
            printf("%d ", i);
            soma+=i;
        }
        printf("Sum=%d\n", soma);
        soma=0;
        scanf("%d %d", &m, &n);
    }
    return 0;
}
