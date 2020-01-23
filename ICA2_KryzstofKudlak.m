% Kryzstof Kudlak
% ENGR 102-H02
% ICA Matlab as a calculator Day 2

clc;     % clear command window
clear;   % delete variables saved in workspace

Prob1a = (28*6*3^3 - sqrt(500))/(10^2+37.3)
Prob1b = sqrt(150) - 4.5^2 * (log(400)/1.5) + sqrt(25)
Prob1c = 2/.036 * ((sqrt(250) - 10.5)^2)/exp(-0.2)
Prob1d = cos(5*pi/6)*sin(7*pi/8) + (tan(pi/6*log(8)))/(sqrt(7) + 2)

disp("------------");

x = 3;

Prob2a = 4*x^3 - 14*x^2 - 6.32*x + 7.3
Prob2b = 5*log10((x^2 - x^3)^2)

disp("------------");

z = 8;

Prob3a = x^2*z - z^2*x + (x/z)^2 - sqrt(z/x)
Prob3b = (x*z)/((x/z)^2) + 14*x^2 - 0.8*z^2

disp("------------");

alpha = 37;     % launch angle in degrees
v0    = 150;    % initial velocity in m/s
g     = 9.81;   % acceleration due to gravity in m/s^2

t_high = (v0 * sind(alpha))/g;
h_max  = ((v0 * sind(alpha))^2)/(2*g);

disp(" ");
disp(['Time to reach max height = ', num2str(t_high), ' s']);
disp(['Max height = ', num2str(h_max), ' m']);



