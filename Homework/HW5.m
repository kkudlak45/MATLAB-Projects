% Kryzstof Kudlak
% ENGR 102-H02
% 3/8/2020

clc; clear;

%%

% Problem 1

h = input("Input how many hours were worked this week\n");

if h < 30
    s = h*7.5;
elseif h > 30
    s = h*10;
else
    s = 270;
end

fprintf("\nEarnings: $%.2f\n\n", s);
    

%%

% Problem 2

% I'm solving this problem by basically importing the table into matlab
% and using the user input to make array indexes

t = [79 80 0.69 84 80 0.74; 69 100 0.59 74 100 0.64; 59 120 0.49 64 120 0.54];
d = zeros(3, 0)

car = "null";

% Case sensitive string comparison.  Looping to make sure of proper input
while (~strcmp(car, "Sedan") && ~strcmp(car, "SUV"))
    car = input("\n\nWhat type of car would you like to rent (Sedan or SUV)?\n", 's');
end

days = input("\nFor how many days would you like to rent this vehicle?\n");
mi = input("\nFor how many miles will you drive?\n");

car = strcmp(car, "SUV");

if days <= 6
    temp = 1;
elseif days <= 29
    temp = 2;
else 
    temp = 3;
end

if mi > t(temp, 2 + 3*car)
    cost = t(temp, 1 + 3*car) * days + (mi - t(temp, 2+3*car)) * t(temp, 3+3*car);
else
    cost = t(temp, 1 + 3*car) * days;
end

fprintf("\nCost: $%.2f\n\n", cost);



%%

% Problem 3

scores = [64, 49, 59, 71, 99, 89, 82, 26, 69, 19, 61, 22, 87, 36, 98, 43, 23, 55, 90, 80, 76, 51, 73, 81, 88, 47, 5, 92, 70, 31];
res = [0 0 0 0 0];

for i = 1:length(scores)
    index = 1;
    while (scores(i) >= 20)
        scores(i) = scores(i) - 20;
        index = index + 1;
    end
    res(index) = res(index) + 1; 
end

for i = 1:length(res)
    if i < 5
        fprintf("Scores between %.0f and %.0f: %.0f\n", 0 + 20*(i - 1), 19 + 20*(i - 1), res(i));
    else
        fprintf("Scores between %.0f and %.0f: %.0f\n", 80, 100, res(i));
    end
end


%%

% Problem 4

hold on;
xlabel("x");
ylabel("y");
title("y vs x");

for x = -10:0.01:10
    if x <= -3
        plot(x, 3/x, 'go');
    elseif x > 2
        plot(x, (x - 3)^2, 'ro');
    else
        plot(x, 3^x - 3, 'bo');
    end
    pause(0.1);
end

hold off;















