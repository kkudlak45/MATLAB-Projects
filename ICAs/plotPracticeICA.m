% Kryzstof Kudlak
% ENGR 102-H02
% ICA - 2/6/2020

clc; clear; close all;

%% 

figure(1);
x = -5:0.1:10;
f = 5*sin(x)./(x + exp(-0.75*x)) - 3*x/5;
plot(x,f,'-');
xlabel('x'); ylabel('y'); title('y vs x');
grid on;
text(0, 0, 'Rising')
% axis[lowx upx lowy upy]

%%

% subplot(rows, cols, panel)
figure(2);

subplot(2, 1, 1);
x = 0:0.1:3;
f = (x+1).*(x-2).*(2*x-0.25)-exp(x);
plot(x,f,'-')

subplot(2, 1, 2);
x = 3:0.1:6;
f = (x+1).*(x-2).*(2*x-0.25)-exp(x);
plot(x,f,'-')

%%

figure(3);
fplot(@(x) (sqrt(abs(cos(3*x))) + (sin(4*x)).^2), [-2, 2]);


%%

% built in functions
zeros(2,3) % 2 rows and 3 cols of just 0s
ones(2,3)  % 2 rows and 3 cols of just 1s
eye(3)     % 3by3 identity matrix

arr1 = [zeros(2,2), ones(2,2)]
arr2 = [zeros(2,3), ones(2,2); ones(1,3), zeros(1,2)]
arr3 = [ones(2,2); zeros(2,2)]
arr4 = [eye(3), ones(3,3)]
arr5 = [ones(2,4); zeros(1,4); ones(1,4)]

% Example
lab = ['a', 'b', 'c']';
aa = [3 5 1]';
bb = [4 7 2]';
cc = [8 6 9]';
table(lab, aa, bb, cc)   % everything must be a column












