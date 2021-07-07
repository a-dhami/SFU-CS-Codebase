% Question 3
% Algorithm obtained from Numerical Analysis 10th Edition
% Page 67 - Newton's Method
% The Newton's method to approximate the following:
% x^2 + x^4 + 6 = x^3 + x^5 + 7
% which is also the same as 
% x^2 - x^3 + x^4 - x^5 - 1 = 0
% A initial value of -1 is used.
% g(x) = f'(x).

f = @(x) (x^2 - x^3 + x^4 - x^5 - 1);
g = @(x) (2*x - 3*x^2 + 4*x^3 - 5*x^4);
n = 11;
p0 = -1;

for i = 1:n;
    p = p0 - (f(p0)/g(p0));
    fprintf("%d-th value: %.18f\n", i, p)
    p0 = p;
end

fprintf("The value of the %d-th Newton's approximation is: %.18f\n", n, p)


