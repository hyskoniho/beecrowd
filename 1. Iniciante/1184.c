#include <stdio.h>

int main(){
    double M[12][12];
    double soma = 0.0;
    int i, j, c = 0;
    char O[2];
    scanf(" %s", &O);
    for(i=0;i<12;i++){
        for(j=0;j<12;j++){
            scanf("%lf", &M[i][j]);
            //M[i][j] = rand()%100;
            //printf("%.1lf ", M[i][j]);
        }
        //printf("\n");
    }
    for(i=1;i<12;i++){
        for(j=0;j<i;j++){
            //printf("%.1lf ", M[i][j]);
            soma+=M[i][j];
            c++;
        }
        //printf("\n");
    }
    switch(O[0]){
    case 'S': printf("%.1lf\n", soma);
    break;
    case 'M': printf("%.1lf\n", soma/c);
    break;
    }
    return 0;
}
