%% HW 4 - MAT225 Fall 2022
% -------------------------------------------------------------------------
% Chapter 4 - Selection Statements
%
% Author: Quinlan, J.
% Modified: 2022-10-01
% 
% MATLAB: 9.10.0.1739362 (R2021a)
%
% REFERENCE:
% Attaway, S. (2019). Matlab: a 
% practical introduction to programming 
% and problem solving. Butterworth-Heinemann.

% -------------------------------------------------------------------------


%% 1.
%{
Write a script that tests whether the user can follow 
instructions.  It prompts the user to enter an 'x'. 
If the user enters anything other than an 'x', it prints
an error message, otherwise it does nothing.
%}

x = input('Enter an ''x'': ','s');
if ~strcmp(x,'x')
    error('Incorrect input');
end


%% 8. 
%{
Write a script that will prompt the user for 
lengths a and c, call a function findb to calculate and 
return the length of b, and print the result.  

If a<0 or c<0, print error.
%}

a = input('Enter a: ');
if  a > 0
    c = input('Enter c: ');
    if c < 0
       error('c must be >0'); 
    else
        b = findb(a,c);
        disp(b);
    end
else
    error('a must be >0');
end
% -------------------------------------------------------------------------



%% 13. 
%{
The continuity equation in fluid dynamics for steady-state fluid flow
equates the product of density, velocity, and area.  For incompressible
flow, the densities are constant, so the equation is A_1 v_1 = A_2 v_2.
If the areas and V_1 are known, V_2 can be solved for using algebra.  
The velocity of second point increases or decreases depending on the areas
of the two points.  Prompt the user for two areas in square feet and will
print whether the velocity at the second point will increase, decrease, or
remain the same.  
%}
a1 = 4;
a2 = 5;

% NOTE: a1 > 0 and a2 > 0.  
if a1/a2 > 1
    disp('Increase');
elseif a1/a2 == 1
    disp('Same');
else
    disp('Decrease');
end

% -------------------------------------------------------------------------




%% 21
%{
Generate one random integer and print whether it is even or odd.  
%}

x =  randi([1,100]);
if rem(x,2) == 0
    disp('Even');
else
    disp('Odd');
end


% -------------------------------------------------------------------------









%% 22.
%{
A storm is a tropical depression if winds are less than 38 mph, tropical
storm if winds are between 39 and 73 mph, and a hurricane if winds >= 74
mph.
%}

w = randi([1,100]);
disp(w);
if w >= 74 
    disp('Hurricane');
elseif w <= 38
    disp('Tropical Depression');
else
    disp('Tropical Storm');
end


% -------------------------------------------------------------------------






%% 23
%{
The Beaufort Wind Scale is used to characterize the strength of winds. The
scale usessues integer values and goes from a force of 0, which is no wind,
up to 12, which is a hurricane.  
%}
clc
ranforce = randi([0,12]);
disp(ranforce);

% There are several ways to do this
cond = 'No Wind';
if ranforce >= 1
    cond = 'Breeze';
    if ranforce >= 7
        cond = 'Gale';
        if ranforce >= 10
            cond = 'Storm';
        else
            cond = 'Hurricane';
        end
    end
end
disp(cond);


%% 
clc
ranforce = randi([0,12]);
disp(ranforce);

if ranforce >=1 && ranforce <= 6
    cond = 'Breeze';
elseif ranforce >=7 && ranforce <= 9
    cond = 'Gale';
elseif ranforce >=10 && ranforce <= 11
    cond = 'Storm';
elseif ranforce == 12
    cond = 'Hurricane';
else
    cond = 'No Wind';
end
disp(cond);

% -------------------------------------------------------------------------










% Local FUNCTIONS
function b = findb(a,c)
    if a < c
        b = sqrt(c^2 - a^2);
    else
        warning('a must be less than c');
        b=[];
    end
end