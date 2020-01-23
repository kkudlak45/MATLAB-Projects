% Kryzstof Kudlak
% ENGR 102-H02
% ICA Script Files 2

clc; 
clear;

%Options for Formating
%s = string (word)
%i = integer
%f = floating point decimal
%E = Scientific notation with E
%e = Scientific notation with e
%\t tabs & \n newlines
%.0f = %d = integer

%disp
d  = 21;
dw = 'Tuesday';
m  = 'January';
t  = 22;

disp(d);
disp('Tuesday');
disp(dw);
disp('Today is an amazing day');

%fprintf

fprintf("\nThe value of d is %i \n", d);
disp(['The value of d is ', num2str(d)]);

fprintf('\nd is %i and t is %i\n', d, t);
disp(['d is ', num2str(d), ' and t is ', num2str(t)]);

fprintf('\nToday is %s %s %i \n', dw, m, d);
disp(['Today is ', dw, ' ', m, ' ' num2str(d)]);

% Example 1

k = exp(3.2) + sqrt((3^3+cosd(45))/9) + sqrt(sin(3*pi/2));

disp(' ');
disp(['The value of k is ', num2str(k)]);














