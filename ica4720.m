% Kryzstof Kudlak
% ENGR 102-H07
% ICA 4/7/2020

clc; clear; close all;

% use global for global variables

%%

% Problem 1

A = zeros(20,20);
A(10,10) = 300;
A(7,9) = 400;
contourf(A);

%%

% Worksheet Problem 1

fprintf('The force is %.2f N\n', getForce(800, 5.98*10^24, 38000*10^3))

%%

% Worksheet Problem 2

fprintf('\nThe weight is %.4f lb\n', getWeight(0.696, 0.6, 0.092));

%%

% Functions 

function force = getForce(m1, m2, r)
    force = (6.672*(10^-11)*m1*m2)/(r^2);
end

function weight = getWeight(g, r, d)
    weight = g*(1/4)*(pi^2)*(2*r+d)*(d^2);
end




