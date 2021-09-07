% Assignment 4
% Akash Dhami - MACM 316
% The same code file is used, for all parts of the assignment.
% Variables are named with the following format, unless a global variable.
% P[question number][question part letter]_[variable name]

% This is a global variable used throughout the assignment.
% n must be greater than 50
n = 50;

% Question 1  ----------------------------:
% Create Perturbations

% Part A
% Creating a n x n matrix that is populated with
% values between [-1 , 1]
% assuming a maximum n value of 100
P1A_B = randi([-1 1], randi([10 100]));


% Part B
% Generating a orthonormal matrix Q from B using
% QR factorization
[P1B_Q,P1B_R] = qr(P1A_B);

% Part C
% Assuming a constant n of 50.
epsilon = 10^-8;
P1_n = n;
P1C_B = zeros(P1_n,P1_n,100);
P1C_Q = zeros(P1_n,P1_n,100);
P1C_epsilonQ = zeros(P1_n,P1_n,100);

for i = 1:100;
    P1C_B(:,:,i) = randi([-1 1], P1_n);
    [P1C_Q(:,:,i),P1C_R] = qr(P1C_B(:,:,i));
    P1C_epsilonQ(:,:,i) = epsilon * P1C_Q(:,:,i);
    
end


% Question 2  ----------------------------:
% Jordan Block and Limacon.

% Part A
% n = represents the number of 1's that are used in vector.
% to obtain a matrix of 50 x 50, a n value of 49 is used.
P2_n = n - 1;
P2A_V = ones(1,P2_n);
P2A_J = diag(P2A_V,1);

% Part B
% teigAeQi = a temporary 3-d matrix that holds all eigenvalues
% eigAeQi = the converted 2-d matrix that holds all eigenvalues
% This is done to plot the eigenvalues and use the plot command

P2B_A = 4*P2A_J;
P2B_eigA = eig(P2B_A);
P2B_condA = cond(P2B_A);
for i = 1:100;
    P2B_teigAeQi(:,:,i) = eig(P2B_A + P1C_epsilonQ(:,:,i));
end

% Conversion of the 3-d eigenvalue matrix into a 2-d matrix.
P2B_eigAeQi = reshape(P2B_teigAeQi,[],1,1);

% plotting the eigenvalues.
figure();
plot(P2B_eigAeQi,'.');
title('Figure 1: - Eigenvalues of (A + epsilonQi) where A = 4J');
    
% Part C
P2C_A = 4*P2A_J + 4*(P2A_J)^2;
P2C_eigA = eig(P2C_A);
P2C_condA = cond(P2C_A);
for i = 1:100;
    P2C_teigAeQi(:,:,i) = eig(P2C_A + P1C_epsilonQ(:,:,i));
end
P2C_eigAeQi = reshape(P2C_teigAeQi,[],1,1);
figure();
plot(P2C_eigAeQi,'.');
title('Figure 2: - Eigenvalues of (A + epsilonQi) where A = 4J * 4J^2');
    
% Question 3  ----------------------------:
% Gauss-Seidel.

% Part A
P3A_J = P2A_J;
P3A_U = P2A_J;
P3A_S = P2A_J + P2A_J.' + diag(-2 * ones(1,n));
P3A_L = P2A_J.' + diag(-2 * ones(1,n));


% Part B
P3B_A = inv(P3A_L) * P3A_U;
P3B_eigA = eig(P3B_A);
P3B_condA = cond(P3B_A);
figure();
plot(P3B_eigA,'.');
title('Figure 3: - Eigenvalues of (L^-1 * U)');

% Part C
for i = 1:100;
    P3C_teigAeQi(:,:,i) = eig(P3B_A + P1C_epsilonQ(:,:,i));
end
P3C_eigAeQi = reshape(P3C_teigAeQi,[],1,1);
figure();
plot(P3C_eigAeQi,'.');
title('Figure 4: - Eigenvalues of (A + epsilonQi) where A = L^-1 * U');

% Question 4  ----------------------------:
% Polynomial.
% Note: The previously used n-value of 50 is continued for this portion
% of the assignment.


% Part A
P4A_R = linspace(-2,2,n);
P4A_C = poly(P4A_R);

% Part B
P4B_A = compan(P4A_C);

% Part C
P4C_eigA = eig(P4B_A);
P4C_condA = cond(P4B_A);

for i = 1:100;
    P4C_teigAeQi(:,:,i) = eig(P4B_A + P1C_epsilonQ(:,:,i));
end
P4C_eigAeQi = reshape(P4C_teigAeQi,[],1,1);
figure();
plot(P4C_eigAeQi,'.');
title('Figure 5: - Eigenvalues of (A + epsilonQi) where A = Companion Matrix');

% Part D
P4D_M = 2*rand(n) - 1;
[P4D_W, P4D_R] = qr(P4D_M);
P4D_B = P4D_W * diag(P4A_R) * P4D_W';

% Computing Eigenvalues
P4D_eigB = eig(P4D_B);

for i = 1:10;
    P4D_r(i) = ceil(((i-1)*10) + 10 * rand(1));
    P4D_teigBeQi(:,:,i) = eig(P4D_B + P1C_epsilonQ(:,:,P4D_r(i)));
    P4D_teigBeQiQiT(:,:,i) = eig(P4D_B + epsilon * (P1C_Q(:,:,i) + P1C_Q(:,:,i).')); 
end