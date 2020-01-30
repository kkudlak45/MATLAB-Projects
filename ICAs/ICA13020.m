% Kryzstof Kudlak
% ICA 1/30/20
% ENGR 102-H02
% Element by Element Calculation

clc; clear;

% Example 1 - x and y must be the same size
x = [3 6 1 7 9 11];
y = [2 4 9 3 11 8];

% the . is the sign for "elementwise"
mult = x.*y  
rdiv = x./y
expo = x.^2
ldiv = x.\y


% Example 2
a = 1:10
zm = (2*a.^2 + 3*a)./(1 + a.^2)


% Example 3
b = 2:2:20
c = (log10(b) + 2*b.^3)./(b+1)


%%%%%%%%%%%%% Elementwise Calculator %%%%%%%%%%%%%%

% Prob 1
disp("%%%%%%%%%%%%% PROBLEM 1 %%%%%%%%%%%%%%")
x = -2:4
y = x.^3 - 2*x.^2 + x


% Prob 2
disp("%%%%%%%%%%%%% PROBLEM 2 %%%%%%%%%%%%%%")
x = -3:3
y = (x.^2 - 2)./(x + 4)


% Prob 3
disp("%%%%%%%%%%%%% PROBLEM 3 %%%%%%%%%%%%%%")
x = 1:7
y = ((x - 3).*(x.^2 + 3))./(x.^2)


% Prob 4
disp("%%%%%%%%%%%%% PROBLEM 4 %%%%%%%%%%%%%%")
t = 0:8
y = (20*t.^(2/3))./(t+1) - ((t + 1).^2)./exp(0.3*t + 5) + 2./(t+1)


% Prob 5
disp("%%%%%%%%%%%%% PROBLEM 5 %%%%%%%%%%%%%%")
alpha = 70;
v0    = 162;
t     = 1:5:31;
g     = 9.81;

x = v0*cosd(alpha)*t
y = v0*sind(alpha)*t - (1/2)*g*t.^2
r = sqrt(x.^2 + y.^2)
theta = atand(y./x)

% Prob 6
disp("%%%%%%%%%%%%% PROBLEM 6 %%%%%%%%%%%%%%")
r = 0.002;
g = 9.81;
k = .0018;
pal = 2700;
pgl = 1260;
t = 0:0.05:0.35;
V = 4/3 * pi * r^3;

v = sqrt(V*(pal-pgl)*g/k) * tanh(sqrt(V*(pal - pgl)*g*k)*t/(V*pal))
plot(t, v)










