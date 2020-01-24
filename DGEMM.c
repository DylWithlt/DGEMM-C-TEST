//
// Created by Administrator on 1/23/2020.
//

#include "DGEMM.h"


void display(int n, double *a, double *b, double *c) {
    for (int i = 0; i < ROWLEN; i++) {
        for (int j = 0; j < 2; j++) {
            printf("c[%d][%d] = %lf\n", i, j, c[i*j*ROWLEN]);
        }
    }
}

void fillArray(int n, double *a, double *b, double *c) {
    for (int i = 0; i < ROWLEN; i++) {
        for (int j = 0; j < ROWLEN; j++) {
            *(a+i+j*n) = (double) rand() / (double) rand();
            *(b+i+j*n) = (double) rand() / (double) rand();
            *(c+i+j*n) = 0;
        }
    }
}

void mm(double a[ROWLEN][ROWLEN], double b[ROWLEN][ROWLEN], double c[ROWLEN][ROWLEN]) {
    int i, j, k;
    for (i = 0; i != ROWLEN; i++) {
        for (j = 0; j != ROWLEN; j++) {
            for (k = 0; k != ROWLEN; k++) {
                c[i][j] = c[i][j] + a[i][k] * b[k][j];
            }
        }
    }
}

void dgemm(int n, const double *A, const double *B, double *C) {
    for (int i = 0; i < n; ++i)
        for (int j = 0; j < n; ++j) {
            double cij = C[i + j * n]; /* cij = C[i][j] */
            for (int k = 0; k < n; k++)
                cij += A[i + k * n] * B[k + j * n]; /* cij += A[i][k]*B[k][j] */
            C[i + j *n] = cij; /* C[i][j] = cij */
        }
}

void dgemm_intrins() {
}