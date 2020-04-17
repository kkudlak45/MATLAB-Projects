% Kryzstof Kudlak
% For/While Loops Homework
% 4/7/2020

clc; clear;  

%%

% Problem 1

fprintf('m = 10: %.8f\n', func1(10));
fprintf('m = 20: %.8f\n', func1(20));

%% 

% Problem 2

grades = [56 89 98 87 92 67 71 66 81 95];
numStu = 0;
i = 0;

while i < length(grades)
    i = i + 1;
    if (grades(i) < 90 && grades(i) >= 70)
        numStu = numStu+1;
    end   
end

fprintf('\nThe number of students with a grade of B or C is %.0f\n\n', numStu);

%%

% Problem 3

arr = zeros(3, 5);

for i = 1:3
    for j = 1:5
        arr(i, j) = (i-j)/(i+j);
    end
end

disp(arr);

%%

% Problem 4

cosx = 1;
x = input('\nInput the angle in radians: \n');
E = 1;
n = 0;

while E > 0.000001
    snprev = cosx;
    n = n + 1;
    cosx = cosx + (((-1)^n)/factorial(2*n))*(x^(2*n));
    E = abs((cosx - snprev)/snprev);
end

fprintf('\nThe value of cos(%.2f) is %.2f\n', x, cosx)

%%

% Functions

% Function for problem 1
function sum = func1(m)
    sum = 0; n = 0;
    while n < m
        sum = sum + ((-1/3)^n)/(2*n+1);
        n = n + 1;
    end
    sum = sum*sqrt(12);
end
