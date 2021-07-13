% Question 2-b

load('Data.mat');

A = H;
AINV = inv(A);
AC = inv(AINV);
I = eye(6,6);

P1 = norm(A * AINV - I, 1);
P2 = norm(AC - A, 1);
P3 = norm(AINV - HI, 1);

fprintf("For A = H" + "\n")
fprintf("A * AINV - 1 (NORM 1): " + P1 + "\n")
fprintf("AC - A (NORM 1): " + P2 + "\n")
fprintf("AINV - HI(NORM 1): " + P3 + "\n")