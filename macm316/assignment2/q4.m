% Question 4
% Algorithm obtained from Numerical Analysis 10th Edition
% Page 71 - Secant's Method
% The Secant's method to approximate the following:
% x^2 + x^4 + 6 = x^3 + x^5 + 7
% which is also the same as 
% x^2 - x^3 + x^4 - x^5 - 1 = 0
% A initial value of -1 and 0 is used.
% g(x) = f'(x).

f = @(x) (x^2 - x^3 + x^4 - x^5 - 1);

n = 11;
p0 = -1;
p1 = 0;

q0 = f(p0);
q1 = f(p1);

for i = 1:n;
    p = p1 - q1*((p1 - p0)/(q1 - q0));
    fprintf("%d-th value: %.8f\n", i, p)
    p0 = p1;
    q0 = q1;
    p1 = p;
    q1 = f(p);
end

fprintf("The value of the %d-th Secant's approximation is: %.8f\n", n, p)


