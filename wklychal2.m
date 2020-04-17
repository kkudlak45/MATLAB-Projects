% Kryzstof Kudlak
% Weekly Challenge 2
% 4/9/2020

clc; clear; close all;

%% 
% Problem 1

fprintf('a) sin(pi/5) = %.4f\n', sine(pi/5))
fprintf('b) sin(pi/3) = %.4f\n', sine(pi/3))

%%
% Problem 2

plate = zeros(10);

for x = 1:10
   for y = 1:10
      plate(x,y) = plate(x,y) + (800*exp(-(x-1)^2)*exp(-3*(y-1)^2));
   end
end

contourf(plate)




%%
% Functions

% I'm only using x as an argument because passing n into the function doesn't make any sense.
% The problem says to stop adding numbers after 40 terms, so why keep track
% of n when you can just do a for loop from 1:40 ?
function si = sine(x)
    si = 0;
    for n = 0:40
        si = si + (((-1)^n)/(factorial(2*n+1))) * x^(2*n+1);
    end
end






