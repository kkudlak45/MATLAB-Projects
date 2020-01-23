% Kryzstof Kudlak
% ENGR 102-H02
% ICA Script Files 2

clc; clear;

% Problem 1
R = log10(34)/(sind(10)+5) + exp(23) + sqrt(63);
disp('Prob1');
disp(['The answer is ', num2str(R)]);


% Problem 2
w = 220;  %lbs
h = 5;    %ft
BMI = 703 * (w/((h*12)^2));

fprintf('\nProb2\nThe BMI of a %i lb %i ft tall person is %.1f\n', w,h,BMI);


% Problem 3
T    = 25;  % degrees C
Tw   = 19;  % degrees C
psta = 985; % mbar

es   = 6.122*exp((17.67*T )/(T  + 243.5));
ew   = 6.122*exp((17.67*Tw)/(Tw + 243.5));
e    = ew - psta*(T-Tw)*0.00066*(1+0.00115*Tw);
RH   = 100*e/es;
Td   = (243*log(e/6.112))/(17.67-log(e/6.112));

fprintf("\nProb3\nRelative humidity is %.1f%% and dew point temp is %.1f degrees C", RH,Td);


%Problem 4
age    = 35;  % years old
h      = 74;  % inches
w      = 220; %lb
gender = 1;   %male

BMI    = 703 * (w/(h^2));
BFP    = 1.2*BMI + 0.23*age - 10.8*gender - 0.54;

fprintf('\n\nProb4\nBody fat percentage is %.1f%%\n', BFP);




