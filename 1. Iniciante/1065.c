#include <stdio.h>

int main(){
    int i, par=0, n;
    for(i=0;i<5;i++){
        scanf("%d", &n);
        if(n%2 == 0){
            par+=1;
        }
    }
    printf("%d valores pares\n", par);
    return 0;
}
