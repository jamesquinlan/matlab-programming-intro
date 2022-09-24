%% HW 1 - MAT225 Fall 2022
% -------------------------------------------
% Chapter 1 - Calculations 
% Author: Quinlan, J.
% Modified: 2022-09-10
% 
% MATLAB: 9.10.0.1739362 (R2021a)
%
% REFERENCE:
% Attaway, S. (2019). Matlab: a 
% practical introduction to programming 
% and problem solving. Butterworth-Heinemann.
% -------------------------------------------


%% 1. 
%{
Create a variable `myage` and store your age in it.  
Add 2 to the value.  Subtract 3.
%}

myage = 53;
myage + 2 - 3

%% 9. What are the results of:
25 / 5 * 3
4 + 2^3
(4+1)^2
2\12 + 5
4 - 1*5

%% 10. Convert miles to kilometers. 1 mile = 1.6093 km
miles = 10;
kilometers = 1.6093*miles

%% 11. Convert Fahrenheit to Celsius. C = (F-32)*5/9
F = 72
C = (F-32)*5/9


%% 15. Generate random numbers

%  real in range [0,30]
30*rand

% real in [10,100]
90*rand + 10

% integer in [1,20]
randi([1,20]) % alt. round(19*rand + 1)

% integer from [0,20]
randi([0,20]) % alt. round(20*rand)

% integer from [30,80]
randi([30,80]) % alt. round(50*rand + 30)


%% 19. Parallel resistance formula
R1 = 2
R2 = 3
R3 = 4
R = 1 / (1/R1 + 1/R2 + 1/R3)

%% 24. 
4*10^3 == 4e3


%% 34.  

%% 37. Chemical pollutant into a stream.  
% A = amount
% C = Concentration
% x = distance from plant

A = 100
x = 5
C = (A/x)*sqrt(2/(pi*exp(1)))


%% Geometric mean (3 numbers)

x1 = 1
x2 = 2
x3 = 3

(x1*x2*x3)^(1/3)

%%
n = 5;
geo = prod(rand(n,1))^(1/n)




