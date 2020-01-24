% Kryzstof Kudlak
% ENGR 101-H02
% HW 1

clc; clear;

%Prob 1

R = log10(24)/tand(10) + 4*exp(2) + 3*sqrt(120);
S = (16 - 216/22)/(1.7^4 + 26) + 9.8 + 3*log(51);
T = (6.4 + 5.2^3)/(1.3^2) + sin(4*pi);

disp(['Answer to a is ', num2str(R)]);
disp(['Answer to b is ', num2str(S)]);
disp(['Answer to c is ', num2str(T)]);


% Prob 2 
a = 24.125487;
b = 35;
c = 22.316548;
d = 19;

fprintf('\nThe value of a is %f', a);
fprintf('\nThe value of b is %i and c is %f', b, c);
fprintf('\nC is equal to %f and B is equal to %i', c, b);
fprintf('\nC is less than D\n');


% Prob 3
Q  = 8000;  % cal/mol
R  = 1.987; % cal/(mol K)
k0 = 1200;  % min^-1
T  = 400;   % K

k  = k0*exp(-Q/(R*T));
fprintf('\nk = %.4f\n', k);


% Prob 4
P = 90000; % dollar
y = 20;    % years
r = 0.055;

M = (P*r/12)/(1 - (1+r/12)^(-12*y));
fprintf('\nM = $%.2f\n', M);


