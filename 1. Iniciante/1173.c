#include <stdio.h>
#include <string.h>

int main(){
    int i, v;
    scanf("%d", &v);
    int n[10] = {v};
    for(i=0;i<10;i++){
            printf("N[%d] = %d\n", i, n[i]);
            n[i+1] = n[i] * 2;
    }
    return 0;
}
