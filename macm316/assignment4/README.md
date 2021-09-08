# MACM 316 - Assignment 4
The following is a summary of the code that is available in this folder.

This assignment makes use of MATLAB to visualize the computed eigenvalues of matrices. This assignment also observes how sensitive eigenvalues are with respect to perbuations in matrices. 

A copy of the assignment pdf is not included due to copyright.

The discussion and deliverables for the assignment is not included. The code has been provided online to aid others in the learning of MACM 316.

### **Note:**
This code is only to be used for educational purposes and to aid in the learning of MACM 316 material.
Please do not copy and paste and submit this code as your own for the assignment.
Instead, use this to learn and improve on your own code and understand how it works.


The code for the entire assignment is stored in asg4.m


# asg4.m
## Question 1 - Creating Perturbations
### Part A
A random n x n matrix (called B) is created using the command `rand` such that each entry in the matrix is between -1 and 1. A random value of n is also chosen by using `rand` with n being between 10 and 100.

### Part B
The matrix B is QR factorized using the `qr` command.

### Part C
100 random orthonormal matrices from Q1, to Q100 are generated and multiplied with a epsilon value of 10^-8. The 100 random orthonormal matrices and the matrices resulting from the multiplication are used. 
We assume a n value of 50 for this portion of the assignment.

## Question 2 - Jordan Block and Limacon.
### Part A
A n x n matrix J is created by using the command `diag` with n >= 50. This value of n is kept consistent through-out the assignment

### Part B
With A = 4J, the eigenvalues and condition numbers are calcuated. 
A subsequent matrix is created using the matrix A above and the 100 random orthonormal matrices from 1-C. 
The following formula is used. ` A + εQi`  to create the subsequent matrix.
The resulting eigenvalues is then plotted using the `plot` command.

### Part C
Part B is repeated except with A  = 4J + 4J^2.
The eigenvalues and complex numbers generated are complex numbers in this case.
The resulting eigenvalues is then plotted using the `plot` command.

## Question 3 - Gauss-Seidel
### Part A 
The required matrices are generated using the following commands
`P3A_J = P2A_J;`
`P3A_U = P2A_J;`
`P3A_S = P2A_J + P2A_J.' + diag(-2 * ones(1,n));`
`P3A_L = P2A_J.' + diag(-2 * ones(1,n));`

### Part B
`A = L-1*U`, where `L = P3A_L` and `U = P3A_U`.
Consult the code for further documentation of the naming scheme of the variables.
The eignevalues of A are calculated and plotted. 

### Part C
The eigenvalues are calculated and plotted for ` A + εQi` where `A = L-1*U`,

## Question 4 - Polynomial
### Part A
The previously used n value of 50 is also used for this portion of the assignment.
Equally spaced points are generated with a n = 50, between the interval [-2,2] using the command `linspace`.
The polynomial `p(z) = c0 + c1z + · · · cn−1zn−1 + zn with r1, r2, ..., rn` is then calculated using the matlab command `poly`

### Part B
A companion matrix is generated using the command `compan`. This matrix i snow reffered to as Matrix A.

### Part C
Eigenvalues are calculated for Matrix A. Eigend.
values are also calculated for  ` A + eQi` using the 100 perturbations created in Question 1. All eigenvalues are plotted using the `plot` comman

### Part D
A matrix B is generated using the following command:
`M = 2*rand(n) - 1;  [W,R] = qr(M);  B = W*diag(r)*W';`

The eigenvalues of B are calculated along with the eigenvalues of the following by using 10 different random orthogonal matrices Qi from Question 1:
1)  `B + εQi`
2)  `B + ε(Qi + QTi )`

The results are then plotted.


