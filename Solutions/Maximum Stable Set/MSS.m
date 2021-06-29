function x = MSS(g)

n = length(g);
f = -ones(n, 1);

% get A %
A = [];
for i = 1:n
    for j = 1:n
        if g(i,j) == 1 && ~(i == j)
            tmp = zeros(1, n);
            tmp(i) = 1;
            tmp(j) = 1;
            A = [A; tmp];
        end
    end
end

b = ones(length(A), 1);
intcon = [1 : n];
lb = zeros(n, 1);
ub = [];
for i = 1:n
    ub = [ub, 1];
end

x = intlinprog(f, intcon, A,b, [], [], lb, ub);