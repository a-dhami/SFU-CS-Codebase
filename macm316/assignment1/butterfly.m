% Akashdeep Dhami
% MACM 316 - Assignment 1

% Question 2-4 (The Butterfly Function)
% This function is used to calculate the value based on the piecewise
% function that is given from f(x0) to f^100(x0)

function y = butterfly(x0)
x = x0;
y = zeros(100,1);

for i = 1:100
    if (0 <= x && x <= 0.5)
        y(i) = 2*x;
    elseif (0.5 <x && x <= 1)
        y(i) = (2*x)-1;
    end
x = round(y(i),10);
end

end