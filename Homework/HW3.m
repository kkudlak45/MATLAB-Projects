% Kryzstof Kudlak
% ENGR 102  - H02
% HW3 - 2/6/2020

clc; clear; close all;

%%

B = [18:-1:13; 12:-1:7; 6:-1:1];
va = [B(:,2); B(:,5)];
vb = [B(3,3:6)'; B(:,2)];
vc = [B(:,2);B(:,4);B(:,6)];

%%

g = 8.81; % m/s^2
theta = 75; % degrees
v0 = 110; % m/s

a = -g/(2*v0^2*(cosd(theta))^2);
b = tand(theta);
c = -200;
s = (-b - sqrt(b^2 - 4*a*c))/(2*a);

x = linspace(0, s, 100);
y = x*b + a * x.^2;
hm = max(y)
xhm = (-b - sqrt(b^2 + 4*a*hm))/(2*a)

%%

u = 0:0.05:1;
k = 0.25;
p = (k*u.*(1-u))./(k+u);
pmax05 = max(p)

u = 0:0.01:1;
p = (k*u.*(1-u))./(k+u);
pmax01 = max(p)

E = abs((pmax01 - pmax05)/pmax05) * 100

%%

figure(1);
fplot(@(x) 4/sqrt(x), [2 60]);
hold on;
fplot(@(x) 5/sqrt(x), [2 60]);
xlabel('PG (mm Hg)'); ylabel('Av (cm^2)'); title('Av vs PG');
legend('Q = 4', 'Q = 5');

%%

figure(2);

subplot(3,1,1);
fplot(@(x) 0.41*x.^4 - 10.8*x.^3 + 64*x.^2 - 8.2*x + 4.4, [0 8]);
ylabel('Position (m)')

subplot(3,1,2);
fplot(@(x) 0.41*4*x.^3 - 10.8*3*x.^2 + 128*x - 8.2, [0 8]);
ylabel('Velocity (m/s)');

subplot(3,1,3);
fplot(@(x) 0.41*12*x.^2 - 10.8*6*x + 128);
ylabel('Acceleration (m/s^2)');
xlabel('Time (s)');
















