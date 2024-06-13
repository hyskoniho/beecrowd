#include <stdio.h>

int main(){
    int c, i, j;
    double mat[12][12];
    double calc = 0.0;
    char t[2];
    scanf("%d", &c);
    scanf("%s", &t);
    for(i=0;i<12;i++){
        for(j=0;j<12;j++){
            scanf("%lf", &mat[i][j]);
            //mat[i][j] = rand()%100;
            //printf("%3.1lf ", mat[i][j]);
        }
        //printf("\n");
    }
    for(i=0;i<12;i++){
        calc = calc + mat[i][c];
    }
    switch(t[0]){
case 'S': printf("%.1lf\n", calc);
    break;
case 'M': printf("%.1lf\n", calc / 12.0);
    break;
    }

    return 0;
}
