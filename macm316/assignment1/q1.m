% Akashdeep Dhami
% MACM 316 - Assignment 1

% Question 1
syms x
y = piecewise(0<=x<=0.5, 2*x, 0.5<x<=1, (2*x)-1);
fplot(y)
