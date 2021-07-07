# MACM 316 - Assignment 1
The following is a summary of the code that is available in this folder.

This assignment makes use of MATLAB to compute f^n(x0) values where n = 1 to 100 of the piecewise function that is given. The assignment requires the user to explore the difference rounding makes in sequential calculations by showcasing the butterfly effect.

This is seen in the assignment when making use of the piecewise function to compute f^n(x0) values from 1 to 100. When rounding is omitted, the values tend to converge to 1, around n = 50. This results in plots being produced that are inaccurate (Figure 1-A.)


Note: 
This code is only to be used for educational purposes and to aid in the learning of MACM 316 material.
Please do not copy and paste and submit this code as your own for the assignment.
Instead, use this to learn and improve on your own code and understand how it works.

# Q1.m
The code is used to display the piecewise function below:
if 0 <=  x <= 0.5 then y = 2x
if 0.5 < x <= 1.0 then y = 2x - 1


# butterfly.m
The code in this file implements the butterfly function. This function is then used in Q2.m to Q4.m
The butterfly function consists of a piecewise function listed below:

if 0 <=  x <= 0.5 then y = 2x
if 0.5 < x <= 1.0 then y = 2x - 1

The function receieves a value for x as input, and then calculates y.
Upon calculating y, the value is rounded to the 10th decimal place.
The process then repeats again, for a total of 100 times. 
The values obtained for y are stored in a 100x1 matrix. 

# Q2.m
The code in this file creates a random number using "rand" in matlab.
The random number is then used as input to calculate f^0 to f^100, using the butterfly function in 
butterfly.m

The initial random value along with f^1, f^2, f^3 and f^100 are displayed on the terminal.


# Q3.m
The code in this file also makes use of a random number and makes use of the butterfly function.
The values obtained from the function are then used to display a plot.

# Q4.m
Similar to code present in Q3.m except instead of random numbers. The following values are used instead.
x1 = 0.2000000001
x2 = 1/pi

These values are then used to create two plots that are graphed out, similar to Q3. 

