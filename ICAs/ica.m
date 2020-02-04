% Kryzstof Kudlak
% ENGR 102
% Plotting ICA
%%
clc; clear; close all;
%%

x = 2:2:10;
y = [0.9 5.6 6.9 11 12.4];
z = [4.7 8.8 6.4 9.2 11.3];

subplot(1,2,1);
plot(x,y,'-.pk');
%hold on;
subplot(1,2,2);
plot(x,z,'-or');


% plot(x, y, linespec)
% Linespec options: https://www.mathworks.com/help/matlab/ref/plot.html#btzitot-LineSpec

% Figure Annotations
xlabel('x');
ylabel('y');
title('Title');
legend('yplot', 'zplot', 'Location', 'northwest');
grid on;

%%
x = 0:0.01:10;
y = sin(x);
figure(2);

plot(x,y); xlabel('x'); ylabel('y = sin(x)'); title('Graph of Sin(x)')
grid on; axis equal;

%% 
x = 0:0.01:10;
y = exp(-x).*sin(2*x+3);
figure(3);
plot(x,y);
axis([0 10 -1 1]);

%%
x = 1:10;
y = [95 93 75 83 93 99 73 85 73 97];
figure(4);
bar(x, y);

%%
% Problem 1
x = -100:0.5:100;
y = 693.8 - 68.8*cosh(x/99.7);
figure(5);
plot(x, y, 'g*');
xlabel('x'); ylabel('y'); title('Problem 1')

%%
% Problem 2
x = -5:0.1:10;
y = 5*sin(x)./(x + exp(-0.75*x)) - 3*x/5;
figure(6);
plot(x, y);
xlabel('x'); ylabel('y'); title('Problem 2');












