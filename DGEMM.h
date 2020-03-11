//
// Created by Administrator on 1/23/2020.
//

#ifndef CDGEMM_DGEMM_H
#define CDGEMM_DGEMM_H

#define ROWLEN 2024
#define MSIZE [ROWLEN][ROWLEN]

#include <stdio.h>
#include <stdlib.h>
#include <time.h>
#include <limits.h>

double *a;
double *b;
double *c;

void mm(double a[ROWLEN][ROWLEN], double b[ROWLEN][ROWLEN], double c[ROWLEN][ROWLEN]);
void dgemm(int n, double *A, double *B, double *C);
void dgemm_pipeline(int n, double* A, double* B, double* C);
void dgemm_intrins();
void smid_dgemm(int n, double *A, double *B, double *C);
void fillArray(int n, double *a, double *b, double *c);
void display(int n, double *a, double *b, double *c);

#endif //CDGEMM_DGEMM_H
