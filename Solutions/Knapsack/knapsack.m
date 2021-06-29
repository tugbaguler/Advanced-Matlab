function x = knapsack(p, w, W)

% p : profit vector (1 x n)
% w : weight vector (1 x n)
% W : capaciy (1 x 1)
 n = length(p);
 f = -p';
 intcon = 1:n;
 lb = zeros(n, 1);
 ub = [];
 for i = 1:n
     ub = [ub, 1];
 end
 A = w;
 b = W;
 
 x = intlinprog(f, intcon, A, b, [],[],lb, ub)