% Akashdeep Dhami
% MACM 316 - Assignment 6
% Question 3

% 3A
T = readtable("http://www.bccdc.ca/Health-Info-Site/Documents/BCCDC_COVID19_Dashboard_Case_Details.csv");

data = table2array(T(:,1));

[count, unique_dates] = groupcounts(data);

scatter(unique_dates, count);
title("Scatter Plot for Part 3A");
xlabel("Date");
ylabel("Number of Cases");

figure();



% 3B
t = 575; 

N = 5050000;
alpha = 1/5;
gamma = 1/10;
r0 = 0;


S = zeros(t,1);
E = zeros(t,1);
I = zeros(t,1);
R = zeros(t,1);
IN = zeros(t,1);

R(1) = 0;
I(1) = 1;
E(1) = 20 * I(1);
S(1) = N-I(1)-E(1)-R(1);
IN(1) = 0;


for i = 2:t
    if(0<=i) && (i<=50)
        r0 = 1.6;
    elseif(51<=i) && (i<=170)
        r0 = 0.8;
    elseif(171<=i) && (i<=260)
        r0 = 1.4;
    elseif(261<=i) && (i<=300)
        r0 = 1.9;
    elseif(301<=i) && (i<=375)
        r0 = 0.85;
    elseif(376<=i) && (i<=440)
        r0 = 1.3;
    elseif(441<=i) && (i<=530)
        r0 = 0.5;
    elseif(531<=i)
        r0 = 1.8;
    end
    
    
    beta = r0 * (1/10);
    
    S(i) = S(i-1) - beta*I(i-1)*S(i-1)/N;
    E(i) = E(i-1) + beta*I(i-1)*S(i-1)/N - alpha*E(i-1);
    I(i) = I(i-1) + alpha*E(i-1) - gamma*I(i-1);
    R(i) = R(i-1) + gamma*I(i-1);
    IN(i) = alpha*E(i-1);
    
end

scatter(unique_dates, count);
hold on;
plot(1:t,I,'LineWidth',2)
grid on
legend("Infected");
xlabel("Time")
ylabel("Population")
title("Reported Scatter Plot + SEIR Model (3B)");

