% Kryzstof Kudlak
% ENGR 102-H02
% Project 2 - Plate Simulation
% 4/16/2020

clc; clear; close all;

%%
% MAIN PROGRAM LOOP

global TMAX;
global tol;
global t;
TMAX = zeros(2,3);

% Create all 6 contour plots
for i = 1:3
    % get temp and tolerance
    t = getTemps(); 
    tol = input('\nTolerance: '); 
    
    % make plate d
    d = zeros(30, 50);
    d(:,:)  = t(1);
    d(10:20, 10:40) = t(3);
    
    % make plate h
    h = zeros(30, 10);
    h(:,:)  = t(1);
    
    % plot both plates
    makePlot(d,1,[1,i]);    
    makePlot(h,0,[2,i]);
    
    fprintf('\n\n-------------\n\n');
end

% show max temmps for each test in a table
disp(table(TMAX(:,1), TMAX(:,2), TMAX(:,3) , 'VariableNames', ["Test1", "Test2", "Test3"]));

% calculate the center of mass
d = zeros(30, 50);
h = ones(30, 10);
d(:,:) = 10;
d(10:20, 10:40) = 0;
h = h * 10;

[massdx, massdy] = centerMass(d);
[masshx, masshy] = centerMass(h);

fprintf('\n\nThe center of mass of plate d is at (%.0f, %.0f)', massdx,massdy);
fprintf('\nThe center of mass of plate h is at (%.0f, %.0f)\n', masshx,masshy);


%%
% MAIN FUNCTION FOR MAKING PLOTS

%{
makePlot() - creates an animation of contour plots of the plate
p - the plate array being animated
isD - boolean telling whether this is plate d
t - the table of inputted temperatures
tol - the tolerance
pos - position in TMAX array to check
void - function doesn't return anything
%}
function void = makePlot(p, isD, pos)
    figure;
    global TMAX; global tol;
    while 1
        old = p;
        p = updatePlate(p, isD);
        TMAX(pos(1),pos(2)) = checkForMax(p, TMAX(pos(1),pos(2)));
    
        contour(p);
        if isD == 1
            axis([0 50 0 30]);
            title('Plate D');
        else
            axis([-10 20 0 30]);
            title('Plate H');
        end
        drawnow;  
        
        if getChange(old, p) < tol
           break;
        end
    end
end

%%
% HELPER FUNCTIONS

%{
getTemps() - requests user input of temperatures
t - a table of all inputted temperatures in the form [T0,T1,T2,T3,T4]
%}
function t = getTemps()
    t = zeros(1,5);
    for i = 1:5
        fprintf('Input T%.0f: ', i-1');
        t(i) = input('');
    end
end

%{
getChange(old, new) - finds the amount of change between animation frames
old - the previous state of the plate
new - the current state of the plate
delta - an average of the differences between the plates
%}
function delta = getChange(old, new)
    delta = abs(mean(mean(old - new)));
end

%{
newMax() - iterates over the plate to check for a new max
p - the plate
currMax - the current max
newMax - the new max to return
%}
function newMax = checkForMax(p, currMax)
    l = length(p(:,1)); 
    w = length(p(1,:));
    newMax = currMax;
    
    for i = 1:l      % row value
        for j = 1:w  % col value
            if p(i,j) > currMax 
                newMax = p(i,j);
            end
        end
    end
end

%{
updatePlate() - updates the temperatures of each point in the plate by
averaging the surrounding values together
plate - the plate being updated
t - the table of inputted temperatures
isD - a boolean which says whether we are updatiing plate D
p - the plate to return after it has been updated fully
%}
function p = updatePlate(plate, isD)
    global t;
    p = plate;
    l = length(p(:,1)); 
    w = length(p(1,:));
    
    for i = 1:l      % row value
        for j = 1:w  % col value
            if isD == 1 && i>=10 && i<=20 && j>=10 && j<=40
                continue
            end
            
            vals = zeros(1,4);
            
            % above = T2
            if i - 1 > 0
                vals(1) = p(i-1,j);
            else
                vals(1) = t(3);
            end
            
            % below = T4
            if i + 1 <= l
                vals(2) = p(i+1,j);
            else
                vals(2) = t(5);
            end
            
            % left = T1
            if j - 1 > 0
                vals(3) = p(i,j-1);
            else
                vals(3) = t(2);
            end
            
            % right = T3
            if j + 1 <= w
                vals(4) = p(i,j+1);
            else
                vals(4) = t(4);
            end
                  
            p(i,j) = mean(vals);
        end
    end
end

%%
% Center of mass function

%{
centerMass() - takes a plate and calculates the center of mass
p - the plate to calculate CoM of
cmx - center of mass along the x axis
cmy - center of mass along the y axis
%}
function [cmx,cmy] = centerMass(p)
    vals = zeros(1, length(p(:,1)));
    for i = 1:length(p(:,1))
        num = 0;
        den = 0;
        for j = 1:length(p(1,:))
            num = num + (p(i,j) * j);
            den = den + p(i,j);
        end
        vals(i) = num/den;
    end
    cmx = floor(mean(vals));
    
    vals = zeros(1, length(p(1,:)));
    for i = 1:length(p(1,:))
        num = 0;
        den = 0;
        for j = 1:length(p(:,1))
            num = num + (p(j,i) * j);
            den = den + p(j,i);
        end
        vals(i) = num/den;
    end
    cmy = floor(mean(vals));
end








