#include <stdio.h>

int main(){
    int N = 0, num = 0, qc = 0, qr = 0, qs = 0, i, total = 0;
    double pc = 0, pr = 0, ps = 0;
    char tipo;
    scanf("%d", &N);
    for(i = 1; i <= N; i++){
            scanf("%d %c", &num, &tipo);
            switch(tipo){
                case 'C':
                    qc = qc + num;
                    break;
                case 'R':
                    qr = qr + num;
                    break;
                case 'S':
                    qs = qs + num;
                    break;
            }
    }
    total = qc + qr + qs;
    pc = (qc * 100.0) / total;
    pr = (qr * 100.0) / total;
    ps = (qs * 100.0) / total;
    printf("Total: %d cobaias\n", total);
    printf("Total de coelhos: %d\n", qc);
    printf("Total de ratos: %d\n", qr);
    printf("Total de sapos: %d\n", qs);
    printf("Percentual de coelhos: %.2lf %\n", pc);
    printf("Percentual de ratos: %.2lf %\n", pr);
    printf("Percentual de sapos: %.2lf %\n", ps);
    return 0;
}
