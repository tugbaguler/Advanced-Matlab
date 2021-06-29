clear; clc;

rn = 10;

% generate graph %
G = zeros(rn, rn);
for i = 1 : rn
    for j = 1 : rn
        if i == j || mod(i + j, 2)
            G(i, j) = 1;
        end             
    end
end


fprintf('Graph Edge: \n');
disp(G);

% get linear prog %
x = MSS(G);
fprintf('Picnic : \n');
disp(x);