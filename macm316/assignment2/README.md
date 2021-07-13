# MACM 316 - Assignment 2
The following is a summary of the code that is available in this folder.

This assignment makes use of MATLAB to approximate the real number solution of 𝑥^2 + 𝑥^4 + 6 = 𝑥^3 + 𝑥^5 + 7 using (a) the bisection method, (b) the fixed-point iteration method, (c) Newton’s method, and (d) the secant method.

Each method is used with a total of 11 iterations to determine the quickest method that calculates an approximation that is closest to the actual root value.

Note:
This code is only to be used for educational purposes and to aid in the learning of MACM 316 material.
Please do not copy and paste and submit this code as your own for the assignment.
Instead, use this to learn and improve on your own code and understand how it works.

# Q1.m
The code in this file makes use of the Bisection method to approximate the following: x^2 + x^4 + 6 = x^3 + x^5 + 7 which is the same as
x^2 + x^4 + 6 - x^3 - x^5 - 7 = 0
which is also the same as
x^2 - x^3 + x^4 - x^5 - 1 = 0

The interval used for approximation is [-1,0] with a n = 11.

The approximate value is then printed onto the terminal.

# Q2.m
The code in this file makes use of the Fixed Point method to approximate the following: x^2 + x^4 + 6 = x^3 + x^5 + 7
which is also the same as
x^2 - x^3 + x^4 - x^5 - 1 = 0

The equivalent fixed point formula used is:
x - (x^2 - x^3 + x^4 - x^5 - 1)/(2x - 3x^2 + 4x^3 - 5x^4)
Initial p0 used is -1

The approximate value is then printed onto the terminal.


# Q3.m

The code in this file makes use of the Newton's method to approximate the following: x^2 + x^4 + 6 = x^3 + x^5 + 7
which is also the same as
x^2 - x^3 + x^4 - x^5 - 1 = 0

An initial value of -1 is used.

The approximate value is then printed onto the terminal.


# Q4.m
The code in this file makes use of the Secant method to approximate the following: x^2 + x^4 + 6 = x^3 + x^5 + 7
which is also the same as
x^2 - x^3 + x^4 - x^5 - 1 = 0

An initial value of -1 and 0 is used.

The approximate value is then printed onto the terminal.
