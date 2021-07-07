% Akashdeep Dhami
% MACM 316 - Assignment 1

% Question 2
% The initial value is obtained by using a random number generator

x0 = rand;

% Using the butterfly subfunction to calculate the y values
y = butterfly(x0);

% Displaying the 1,2,3, and 100th f^(n)(x0) values.
fprintf('The initial x0 value is: %f\n',x0)
fprintf('f^(1)(x0) is %f\n',y(1))
fprintf('f^(2)(x0) is %f\n',y(2))
fprintf('f^(3)(x0) is %f\n',y(3))
fprintf('f^(100)(x0) is %f\n',y(100))

