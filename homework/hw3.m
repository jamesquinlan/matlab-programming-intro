%% HW 3 - MAT225 Fall 2022
% -------------------------------------------------------------------------
% Chapter 3 - Scripts, FileIO, Plots, fprintf
%
% Author: Quinlan, J.
% Modified: 2022-09-10
% 
% MATLAB: 9.10.0.1739362 (R2021a)
%
% REFERENCE:
% Attaway, S. (2019). Matlab: a 
% practical introduction to programming 
% and problem solving. Butterworth-Heinemann.

% -------------------------------------------------------------------------


%% #3. 
%{
Prompt user for a number.
%}
x = input(' Enter your favorite number: ');



%% #5. 
%{
Prompt user for number, then use fprintf to 
print the value of this variable to 2 decimals.
%}
x = input(' Enter your favorite number: ');
fprintf('Your number is %0.2f.\n',x);



%% #17. 
%{
Assign x and y coordinates, then plot using green +.
%}
x = 5; y= 2;
plot(x,y,'g+')



%% #18. 
%{
Plot sin(x) for x in 0 to pi
%}
x = linspace(0,pi);
plot(x,sin(x))


%% #19. 
%{
- Prompt user for a max x value
- create an x vector from 1 to user's max in steps of 0.1
- create vector y = sin(x)
- plot(x,y) using blue *'s, add x,y labels and a title
%}
m = input(' Enter maximum for value for vector: ');
x = 1:0.1:m;
y = sin(x);
plot(x,y,'b*')
xlabel('x');
ylabel('sin(x)');
title('y = sin(x)');


%% #21. 
%{
Generate a random integer n, 
create a vector of the integer 1 through n in steps 2, 
square them, and 
plot the squares.
%}
n = randi([2,100]);
x = 1:2:n;
y = x.^2;
plot(x,y,'*')



%% #23. 
%{
Create a 3x6 matrix of random integers from 50-100.
Write this to `randfile.dat`. 
Create a new 2x6 matrix from 50 - 100.
Append this matrix to the file.
Then, read file.
%}

A = randi([50,100], 3, 6);
save randfile.dat A -ascii
B = randi([50,100], 2, 6);
save randfile.dat B -ascii -append
load randfile.dat



%% #24. 
%{
Create a 5 x 5 random matrix. Create 3x3 "middle"
matrix and save to a file.
%}
A = randi([50,100], 5,5);
B = A(2:4,2:4);
save randfile.dat B -ascii



%% #31. 
%{
Write function isdivby4 that receives an integer
and returns logical if the input is divisible by 4.  
%}
% See EOF

% Test
isdivby4(16)

%% #33. 
%{
Write a function ispythag which takes three input values
and determines (T/F) if they form a Pythagorean triple.
%}

% See EOF

% Test
ispythag(3,4,5)




% Local FUNCTIONS 
function y = isdivby4(x)
    y = mod(x,4) == 0;
end


function y = ispythag(x,y,z)
    y = x^2 + y^2 == z^2;
end