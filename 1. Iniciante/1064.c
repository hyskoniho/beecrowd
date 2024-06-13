#include <stdio.h>

int main(){
    float v = 0, mp = 0;
    int i, f = 0;
    for (i = 0;i < 6;i++){
        scanf("%f", &v);
        if(v > 0){
            f = f + 1;
            mp = v + mp;
        }
    }
    printf("%i valores positivos\n", f);
    mp = mp / f;
    printf("%.1f\n", mp);
    return 0;
}
