% Kryzstof Kudlak
% ENGR 102-H02
% For Loops ICA

%%

m = [1 4 7 9 11 23 21 34 56 23 21 45 67 98];

for i = 1:length(m)
    disp(m(i));
end

%%

m = [12 9 4 54 4; 1 7 1 6 9; 2 3 1 3 0; 9 11 1 5 7; 5 23 6 0 1];

s = size(m);

for i = 1:s(1)
    for j = 1:s(2)
        disp(m(i,j));
    end
end

%%

k = [3 7 8 15 25];
y = zeros(size(k));

for i = 1:length(k)
    y(i) = 2*k(i)+2;
end

disp(y);

%%

g = [56 89 98 87 92 67 71 66 81 95];
sum = 0;

for i = 1:length(g);
    if (g(i) >= 90)
        sum = sum + 1;
    end
end

fprintf('\n%.0f students got an A on the exam\n\n', sum);

%%

x = [-3.5 -5 6.2 11 0 8.1 -9 0 3 -1 3 2.5];
P = [];
N = [];

for i = 1:length(x)
    if (x(i) > 0)
        P = [P, x(i)];
    elseif (x(i) < 0)
        N = [N, x(i)];
    end
end

disp("Negative numbers:")
disp(N);
disp("Positive numbers:");
disp(P);

%%

a = [2, 4, 3, 6, 8, 9, 10, 7, 7, 9];
w = [1.1 4 2.4 5 7 6 2 5 4 6.1 6 6.5 4.6];

for i = 1:length(a)
    fprintf("\nBag %.0f contains %.0f apples and weighs %.1f pounds", i, a(i), w(i));
end

fprintf('\n\n\n');









