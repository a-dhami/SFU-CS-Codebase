% Akashdeep Dhami
% MACM 316 - Assignment 1

% Question 4

% Plot 1 - 0.2000000001
% Plot 2 - 1/pi

% Setting the intital values for both figures
x1_0 = 0.2000000001;
x2_0 = 1/pi;
xaxis = 1:1:100;

% Calling the butterfly subfunction to compute the f^(n)(x0) values
y1 = butterfly(x1_0);
y2 = butterfly(x2_0);

% Creating the figures/plots for the two initial value conditions
figure('NumberTitle', 'on', 'Name', 'The sequence with  initial value 0.2000000001');
plot(xaxis, y1, '.');
title('The sequence with initial value 0.2000000001')

figure('NumberTitle', 'on', 'Name', 'The sequence with initial value 1/pi');
plot(xaxis, y2, '.');
title('The sequence with initial value 1/pi')




