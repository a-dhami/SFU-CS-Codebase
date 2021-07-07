% Question 1
% Algorithm obtained from Numerical Analysis 10th Edition
% Page 49 - Bisection Method
% The bisection method to approximate the following:
% x^2 + x^4 + 6 = x^3 + x^5 + 7
% is the same as 
% x^2 + x^4 + 6 - x^3 - x^5 - 7 = 0
% which is also the same as 
% x^2 - x^3 + x^4 - x^5 - 1 = 0

f = @(x) (x^2 - x^3 + x^4 - x^5 - 1);
a = -1;
b = 0;
n = 11;

% check to determine a difference in signs
if f(a) * f(b) > 0
    return;
end

for i = 1:11;
    p = a + ((b - a)/2);
    pval = f(p);
    fprintf("%d-th value: %.8f\n", i, p)
    if pval == 0;
        return;
    end
    if  f(a) * f(p) > 0
        a = p;
    else
        b = p;
    end
end

fprintf("The value of the %d-th bisection approximation is: %.8f\n", n, p)