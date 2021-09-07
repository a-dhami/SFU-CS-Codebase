% Akashdeep Dhami
% MACM 316 - Assignment 6
% Question 2


t = 180; 

N = 5000000;
alpha = 1/5;
gamma = 1/10;
r0 = 0;


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
    
    if(0<=i) && (i<=20)
        r0 = 3;
    elseif(21<=i) && (i<=70)
        r0 = 2.2;
    elseif(71<=i) && (i<=84)
        r0 = 0.9;
    elseif(85<=i) && (i<=90)
        r0 = 2.5;
    elseif(91<=i) && (i<=110)
        r0 = 3.2;
    elseif(111<=i) && (i<=180)
        r0 = 0.85;
    elseif(181<=i)
        r0 = 0.5;
    end
    
    
    beta = r0 * (1/10);
    
    S(i) = S(i-1) - beta*I(i-1)*S(i-1)/N;
    E(i) = E(i-1) + beta*I(i-1)*S(i-1)/N - alpha*E(i-1);
    I(i) = I(i-1) + alpha*E(i-1) - gamma*I(i-1);
    R(i) = R(i-1) + gamma*I(i-1);
    IN(i) = alpha*E(i-1);
    
end

plot(1:t,S,'LineWidth',2)
hold on
plot(1:t,R,'LineWidth',2)
grid on
legend("Susceptible","Removed");
xlabel("Time")
ylabel("Population")
title("Scenario Three (SR Only) - Part 2A/2B");

figure();
plot(1:t,E,'LineWidth',2)
hold on
plot(1:t,I,'LineWidth',2)
grid on

legend("Exposed","Infected")
xlabel("Time")
ylabel("Population")
title("Scenario Three (EI Only) - Part 2A/2B");