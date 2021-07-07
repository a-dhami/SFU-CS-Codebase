% Akashdeep Dhami
% MACM 316 - Assignment 1

% Question 3

% A random number is still used.
% Can input a random number to be used instead if required
% by using x = input('Please input a number between 0 and 1')

x0 = rand;
xaxis = 1:1:100;

% Calling the butterfly subfunction to compute the f^(n)(x0) values
y = butterfly(x0);

% Plotting the x/y values to create a plot
plot(xaxis, y, '.');
title('The sequence with a random initial value')

