% Question 2
% Algorithm obtained from Numerical Analysis 10th Edition
% Page 59 - Fixed-Point
% The fixed-point method to approximate the following:
% x^2 + x^4 + 6 = x^3 + x^5 + 7
% which is also the same as 
% x^2 - x^3 + x^4 - x^5 - 1 = 0

% The equivalent fixed point formula used is:
% x - (x^2 - x^3 + x^4 - x^5 - 1)/(2x - 3x^2 + 4x^3 - 5x^4)
% Initial p0 used is -1
g = @(x) (x - ((x^2 - x^3 + x^4 - x^5 - 1)/(2*x - 3*x^2 + 4*x^3 - 5*x^4)));
n = 11;
p0 = -1;

for i = 1:n;
    p = g(p0);
    fprintf("%d-th value: %.18f\n", i, p)
    p0 = p;
end

fprintf("The value of the %d-th fixed-point approximation is: %.18f\n", n, p)


