#include <stdio.h>

int main(){
    float v;
    int i, f = 0;
    for (i = 0;i < 6;i++){
        scanf("%f", &v);
        if(v > 0){
            f = f + 1;
        }
    }
    printf("%i valores positivos\n", f);
    return 0;
}
