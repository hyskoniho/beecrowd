#include <stdio.h>

int main(){
    int i = 0, v  = 0;
    scanf("%d", &v);
    if (v % 2 == 0){
        v = v + 1;
    }
    for(i = 0; i < 6; i++){
        printf("%d\n", v);
        v = v + 2;
    }
    return 0;
}
