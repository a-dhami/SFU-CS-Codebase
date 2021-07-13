% Question 2-c

load('Data.mat');

A = H8;
AINV = inv(A);
AC = inv(AINV);
I = eye(8,8);

P1 = norm(A * AINV - I, 1);
P2 = norm(AC - A, 1);
P3 = norm(AINV - HI8, 1);
P4 = cond(A,1);
fprintf("For A = H8" + "\n")
fprintf("A * AINV - 1 (NORM 1): " + P1 + "\n")
fprintf("AC - A (NORM 1): " + P2 + "\n")
fprintf("AINV - HI8(NORM 1): " + P3 + "\n")
fprintf("K1(H8): " + P4 + "\n");