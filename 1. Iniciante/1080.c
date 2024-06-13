#include <stdio.h>

int main(){
    int i, x, mv = 0, pos = 0;
    for(i = 1; i <= 100; i++){
        scanf("%d", &x);
        if(x > mv){
            mv = x;
            pos = i;
        }
    }
    printf("%d\n", mv);
    printf("%d\n", pos);
    return 0;
}
