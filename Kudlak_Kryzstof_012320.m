% Kryzstof Kudlak
% ENGR 101-H02
% ICA Vectors and Matrices

clc; clear;

% Vectors
% Row Vectors
a  = [3 7 9 11 5 10]   % 1   by 6
aa = [3,7,9,11,5,10] % row by column

% Column Vectors
b  = [8; 4; 1; 7]      % 4 by 1
bb = [9
      4
      3]
  
  
% Shortcuts for creating vectors

% Option 1
c   = 2:2:10             % start:inc:toval
cc  = 3:3:15  
ccc = 5:10               % start:toval

% Option 2
d = linspace(3, 10, 4)   % init, final, num of elem


% Transpose
e = [4:2:10]'            % flips rows to columns


% Referencing elements
e(4) = 100               % sets
e(1) = 1000
e(3) = []                % deletes


% Example
f      = [2:2:8, 9, 3:5]
f(2:4) = []
f(8)   = 100


% Matrices
g = [ 
      4  6  1  7
      8  5  9 11
      2  3 15 20 
    ]

g(3,3)
g(3,4)
g(3,:)
g(:,3)
g(:,2) = []
g(1,2) = 100

h = [2:2:10; 5:-1:1; 7:9 3 9]


% Create a 10 element row vector named hh that
% Contains the elements in row 1 and 3 of vector h
hh  = [h(1,:); h(3,:)]

% Create a 6 element row vector named hhh that
% contains the elements in columns 2 and 4 of vec h
hhh = [h(:,2)' h(:,4)']

%{
 Use an fprintf command to display the element in
 row 3, column 4 of vector h
 the fprintf command should display 
 "The element in row 3 and column 4 of vector h is XX."
%}
fprintf('The element in row 3 and column 4 of vector h is %i.\n', h(3,4));

%{
 Use an fprintf command to display the element in
 row 3, column 4 of vector h and row 3, column 3 of vector h
 The fprintf command should display 
 "The element in row 3 and columns 4 and 3 of vector h are XX and YY."
%}
fprintf('The element in row 3 and columns 4 and 3 of vector h are %i and %i.\n', h(3,4), h(3,3));

% Built in functions
j = [2:2:4,6,sind(10),sqrt(5)]
% average
mean = mean(j)
std  = std(j)
max  = max(j)
min  = min(j)
