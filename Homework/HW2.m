% Kryzstof Kudlak
% ENGR 102 -  H02
% Problem 7 - HW 2

clc; clear;

%%%%%%% PROB 1 %%%%%%%

P1a = (log(3) + 23*24^3 + log10(34))/(sind(10)+3^4) + exp(13) + sqrt(11);
P1b = exp(2) + log10(4.6) - (sqrt(456) + 45)/cos(pi/3);

disp(['P1a: ', num2str(P1a)]);
disp(['P1b: ', num2str(P1b)]);
disp(' ');

%%%%%%% PROB 2 %%%%%%%

disp("-----------------")

A = 11.2356;
B = 15;
C = 11.56987;
D = 25;

fprintf("\nA is %.1f and C is %.2f.", A, C);
fprintf("\nD is equal to %i", D);
fprintf("\nC is equal to %.0f", C);
fprintf("\nWhile A is %.0f, B is %.1f, C is %.1f, and D is %.2f.\n\n", A, B, C, D);

%%%%%%% PROB 3 %%%%%%%

disp("-----------------");
disp(" ");

AGE = input("How old are you?\n");
RHR = input("What is your resting heart rate?\n");
INTERN = input("What is your fitness level? (0.55 for low, 0.65 for medium, 0.8 for high)\n");
THR = ((220-AGE)-RHR)*INTERN+RHR;
fprintf("\nThe training heart rate for a %.0f old individual with a resting heart rate of %.0f bpm is %.0f bpm.\n\n", AGE, RHR, THR);

%%%%%%% PROB 4 %%%%%%%

disp("-----------------");
disp(" ");

C_4 = [2:2:10; 3:3:15; 7:7:35];
A_4 = C_4(:,3);
disp(A_4);

%%%%%%% PROB 5 %%%%%%%

disp("-----------------");

tny = [31 26 30 29 33 33 39 41 41 34 33 45 42 36 39 37 45 43 36 41 37 32 35 42 38 33 40 37 36 51 50];
tpitt = [37 24 28 25 21 28 46 37 36 20 24 31 34 40 43 36 34 41 42 35 38 36 35 33 42 42 37 26 20 25 31];

fprintf('\nAverage temp for NY: %.2f\n', mean(tny));
fprintf('Average temp for Pitt: %.2f\n', mean(tpitt));
fprintf('\nMax temp for NY: %.0f\n', max(tny));
fprintf('Max temp for Pitt: %.0f\n', max(tpitt));
fprintf('\nMin temp for NY: %.0f\n', min(tny));
fprintf('Min temp for Pitt: %.0f\n', min(tpitt));




