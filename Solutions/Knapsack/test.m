clear; clc;

rn = 10;
profit = [11 : 20];
weight = [50 : -1 : 41];
Wmax = 300;

fprintf('Profits : \n');
disp(profit);
fprintf('Weights : \n');
disp(weight);
fprintf('Maximum weight : %f', Wmax);

x = knapsack(profit, weight, Wmax);
fprintf('0-1 knapsack problem solver : \n')
disp(x);