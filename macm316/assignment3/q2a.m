% Question 2-a

load('Data.mat');

A = E;
AINV = inv(A);
AC = inv(AINV);
I = eye(6,6);

P1 = norm(A * AINV - I, 1);
P2 = norm(AC - A, 1);

fprintf("For A = E" + "\n")
fprintf("A * AINV - 1 (NORM 1): " + P1 + "\n")
fprintf("AC - A (NORM 1): " + P2 + "\n")
