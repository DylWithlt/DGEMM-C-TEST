// thanks to Joshua Skootsky
#include "DGEMM.h"

int main(int argc, char *argv[]) {
    // seed random generator
    srand(2020);

    a = malloc(ROWLEN * ROWLEN * sizeof(double));
    b = malloc(ROWLEN * ROWLEN * sizeof(double));
    c = malloc(ROWLEN * ROWLEN * sizeof(double));

    clock_t start, end;
    double cpu_time_used;
    start = clock();

    /* initialize matricies */
    fillArray(ROWLEN, a, b, c);

    //mm(a, b, c);
    smid_dgemm(ROWLEN, a, b, c);
    dgemm_intrins();

    end = clock();
    cpu_time_used = ((double) (end - start)) / CLOCKS_PER_SEC;
    printf("the elapsed CPU time is %lf\n", cpu_time_used);
    printf("Clocks per sec: %d\n", CLOCKS_PER_SEC);

    display(ROWLEN, a, b, c);

    return 0;
}




