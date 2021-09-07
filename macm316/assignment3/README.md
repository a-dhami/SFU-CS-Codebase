# MACM 316 - Assignment 3
The following is a summary of the code that is available in this folder.

This assignment makes use of MATLAB to perform linear algebraic functions on matrices.

A copy of the assignment pdf is not included due to copyright.

The file data.mat is loaded which contains all the data required for the assignment. This inclues the matrices E, H, HI, H8, and HI8 that are used for the assignment. This file also contains the variable epsilon that is used for calculations in the assignment. 

These functions include solving linear systems to determine perturbations in the right hand side and of the matrix. Functions to inverse and double-inverse a matrix are also used to examine how MATLAB performs.

Note:
This code is only to be used for educational purposes and to aid in the learning of MACM 316 material.
Please do not copy and paste and submit this code as your own for the assignment.
Instead, use this to learn and improve on your own code and understand how it works.

# Q1a.m
## Perturbations in the Right - Hand Side
The code in this file determines the perturbations observed when A = H and A = E. A total of 100 systems are solved. Each right side b = B(: , j) is paired with each perturbation direction d = D (: , k) .
The solution of Ax = b and Ay = b + epsilon * d is then computed and the amplification of the relative errors are compared. 

# Q1b.m
## Pertubations of the Matrix

The code in this file solves a total of 60 linear systems to compute amplification factors. This is done for both matrices E and H. The same 10 right hand sides from Q1a.m are used.
All data matrices have a ||C||1  = 1

Ax =b and (A + epsilonC)z = b are computed using Matlab and the relative errors are compared.

# Q2a.m, Q2b.m, Q2c.m

The code in this file makes use of the command AINV = inv(A) to compute the inverse of matrix A. The resulting matrix is also inversed using the same command.
I represents the identity matrix.

### For Q2A.m,
A = E, and ||A * AINV - I ||1 and || AC - A||1 are computed

### For Q2B.m,
A = H, and ||A * AINV - I ||1 and || AC - A||1 are computed.
This is compared to HI, which is the exact inverse that is provided in Data.mat

### For Q2C.m,
A = H8, and ||A * AINV - I ||1 and || AC - A||1 are computed
This is compared to HI8, which is the exact inverse that is provided in Data.mat


