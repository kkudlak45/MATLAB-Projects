% Kryzstof Kudlak
% Weekly Challenge 1
% 4/2/2020

clc; clear;

%%

% Problem 1

x = [38.91, 3.904*10^-2, -3.105*10^-5, 8.606*10^-9; 48.5, 9.188*10^-2, -8.54*10^-5, 32.4*10^-9; 25.48, 1.520*10^-2, -0.7155*10^-5, 1.312*10^-9; 29, 0.2199*10^-2, -0.5723*10^-5, -2.871*10^-9];
delh = zeros(1, 4);

for i = 1:4
    t = 300;
    while t < 1000
        delh(i) = delh(i) + (x(i,1) + x(i,2)*t + x(i,3)*t^2 + x(i,4)*t^3);
        t = t + 1;
    end
end

fprintf('Enthalpy of SO_2: %.0f J\n', delh(1));
fprintf('Enthalpy of SO_3: %.0f J\n', delh(2));
fprintf('Enthalpy of O_2:  %.0f J\n', delh(3));
fprintf('Enthalpy of N_2:  %.0f J\n', delh(4));

fprintf('\nEnthalpy is the amount of energy it takes to heat a substance from one temperature to another\n');
fprintf('The gas with the lowest enthalpy is N_2\n');
fprintf('The gas with the highest enthalpy is SO_3\n');
fprintf('Some gases have lower enthalpies than others because they have a smaller heat capacity.\n\n');

%%

% Problem 2

vals = input('\nHow many values?\n');
x = zeros(1, vals);

for i = 1:vals
    n = input("\nEnter a number:\n");
    if n > 0
        x(i) = n; 
    end
end

sum = 0;
for i = 1:vals
    sum = sum + x(i)^2;
end

rms = (1/vals)*sum;
fprintf('\nThe rms is %.0f\n\n', rms);


%%

% Problem 3

speed = [12.03, 21.72, 24.31, 25.42, 25.63, 26.95, 26.73, 26.01, 26.32, 26.22];
time = [0, 1.86, 2.89, 3.81, 4.69, 5.57, 6.4, 7.23, 8.09, 8.94, 9.79];
distance = 0;

for i = 1:length(speed)
    distance = distance + (((time(i+1) - time(i))/3600) * speed(i));
end

distance = distance*1609.34;
fprintf('%.2f m were travelled\n\n', distance);
