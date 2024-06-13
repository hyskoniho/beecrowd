#include <stdio.h>
#include <string.h>

int main(){
    int n[20], m[20], i;
    for(i=0;i<20;i++){
        scanf("%d", &n[i]);
        m[19-i] = n[i];
    }
    for(i=0;i<20;i++){
        printf("N[%d] = %d\n", i, m[i]);
    }
    return 0;
}
