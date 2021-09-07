% Akashdeep Dhami
% MACM 316 - Assignment 6
% Question 1abc

% The following code contains the answers for Question 1 
% Part A, B, C

% The overall code from Part A has been adapted to Parts B and C

% The following values have been adjusted to meet the requirements for 
% Part B
t = 180; 

N = 5000000;
r0 = 2.5;
alpha = 1/5;
beta = r0 * (1/10);
gamma = 1/10;


S = zeros(t,1);
E = zeros(t,1);
I = zeros(t,1);
R = zeros(t,1);
IN = zeros(t,1);

R(1) = 0;
I(1) = 40;
E(1) = 20 * I(1);
S(1) = N-I(1)-E(1)-R(1);
IN(1) = 0;

for i = 2:t
    
    S(i) = S(i-1) - beta*I(i-1)*S(i-1)/N;
    E(i) = E(i-1) + beta*I(i-1)*S(i-1)/N - alpha*E(i-1);
    I(i) = I(i-1) + alpha*E(i-1) - gamma*I(i-1);
    R(i) = R(i-1) + gamma*I(i-1);
    
    % The following code completes the requirements for Part C.
    IN(i) = alpha*E(i-1);
    
end

plot(1:t,S,'LineWidth',2)
hold on
plot(1:t,E,'LineWidth',2)
hold on
plot(1:t,I,'LineWidth',2)
hold on
plot(1:t,R,'LineWidth',2)
grid on


title("SEIR Graph for Part 1-B");
legend("Susceptible","Exposed","Infected","Removed")
xlabel("Time")
ylabel("Population")


% Figure for Part C
figure();
plot(1:t,IN,'LineWidth',2)
title("Incident Cases Graph for Part 1-C");
xlabel("Time")
ylabel("Population")