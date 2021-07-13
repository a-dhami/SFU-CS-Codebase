% Question 1-a
% Perbuations on the Right Hand Side

load('Data.mat');

A = E;
acond = cond(A,1);
arcond = rcond(A);

e = [];

for j = 1:10;
    b = B(:, j);
    x = A\b;
    for k = 1:10;
        d = D(:, k);
        y = A\(b + (epsilon * d));
        e = [e,norm(y-x,1)/(epsilon* norm(x,1))];
    end
end

e_mean = mean(e);
e_median = median(e,'all');
e_max = max(e);

set(gca, 'YScale', 'log');
semilogy(e,'.');
yline(acond,'-',"K1(A)");
yline(arcond,'.',"1/K1(A)");
xlabel('experiment');
ylabel('amplification');
dim = [0.6 0.5 0.3 0.3];
str = sprintf("K1(A): " + acond + "\n1/K1(A): " + arcond + "\nMean: " + e_mean + "\nMedian: " + e_median + "\nMax: " + e_max);
annotation('textbox',dim,'String',str,'FitBoxToText','on');