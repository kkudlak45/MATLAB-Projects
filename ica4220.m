% Kryzstof Kudlak
% ICA - Custom functions
% 4/2/2020

% function [output vars] = Name(input vars)
% functions can be saved in other files, but make sure filename matches fxn

clc; clear;


%%

% Problem 1

r = 8;
h = 20;
v = vol(8,20);
fprintf('The volume is %.2f m^3.\n', v);


%%

% Problem 2

fprintf('\nThe monthly deposit under these conditions is $%.2f\n', invest(25000, 4.25, 10));

%%


function v = vol(r, h) 

    % Calculates volume of cylinder
    % Input args are r = radius, and h = height
    % Output arg is v = volume of cylinder
    
    v = pi*(r^2)*h;
    
end

function M = invest(S, r, N)
    
    % Calculates monthly deposit needed to reach an investment goal
    % Input args are S = investment goal, r = annual interest rate, and N =
    % number of years
    % Output arg is M = monthly deposit
    
    M = S*((r/1200)/((1 + r/1200)^(12*N)-1));
    
end




