#include <stdio.h>

int main(){
    int dist = 0;
    double comb = 0, media = 0;
    scanf("%d %lf", &dist, &comb);
    media = dist / comb;
    printf("%.3lf km/l\n", media);
    return 0;
}
