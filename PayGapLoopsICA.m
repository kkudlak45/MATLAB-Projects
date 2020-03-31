% Kryzstof Kudlak
% Gender Pay Gap Loops Assignment
% 3/23/20

clc; clear; close all;

%%

% Part A

t = zeros(10, 6);
t(1, 1) = 2018; % year
t(1, 2) = 66097; % men
t(1, 3) = 63554; % women
t(1, 4) = t(1, 2) - t(1, 3); % difference
t(1, 5) = t(1, 3)/t(1, 2); % ratio
t(1, 6) = t(1, 4)/t(1, 2); % gap

for i = 2:11
    
    t(i, 1) = t(1,1) + i - 1;  % set the year
    t(i, 2) = t(i-1,2) + t(i-1,2) * .05; % increase pay of men
    t(i, 3) = t(i-1,3) + t(i-1,3) * .05; % increase pay of women
    t(i, 4) = t(i, 2) - t(i, 3); % difference
    t(i, 5) = t(i, 3)/t(i, 2); % ratio
    t(i, 6) = t(i, 4)/t(i, 2); % gap

end

table(t(:,1), t(:,2), t(:,3), t(:,4), t(:,5), t(:,6), 'VariableNames', ["Year", "Men Salary", "Women Salary", "Difference", "Ratio", "Pay Gap"])
hold on;
plot(2018:2028, t(:, 2));
plot(2018:2028, t(:, 3));
hold off;
xlabel("Time (years)"); ylabel("Salary ($)"); title("Salary of Men and Women vs Time");
legend("Men", "Women");







