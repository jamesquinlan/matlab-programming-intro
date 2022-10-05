%% HW 2 - MAT225 Fall 2022
% -------------------------------------------
% Chapter 2 - Vectors and Matrices
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

% -------------------------------------------


%% #6. 
%{
Create a vector with 30 equally spaced points
betwee -2*pi and 2*pi
%}
linspace(-2*pi,2*pi,30);



%% #7. 
%{
Use linspace to create equivalent vector as 1:0.5:3
%}
x = 1:0.5:3;
y = linspace(1,3,5);



%% #10. 
%{
Create variable to store random integer in range
5 to 9.  Create vector from 1 to that variable in 
steps of 3.
%}
x = 1:3:randi([5,9]);



%% #12. 
%{
Use colon and transpose to create a column vector
with values -1 to 1 in steps of 0.5.
%}
(-1:0.5:1)';



%% #14. 
%{
Write an expression accessing only the odd indices
of a vector regardless of the length of the vector.
%}
n = 10;
x = randi([1,100],1, n);
x(1:2:n)



%% #19. 
%{
Generate 2x3 random matrices
a). [0,1]
b). [0,5]
c). integers [10,50]
%}

a = rand(2,3);
b = 5*rand(2,3);
c = randi([10,50], 2, 3);
disp(c);



%% #23. 
%{
Pass a random 2x3 matrix of integers to
flip, fliplr, flipud, rot90
%}
c = randi([10,50], 2, 3);
flip(c); % flip columns vertically
fliplr(c);
flipud(c);
rot90(c);



%% #30. 
%{
Create a vector x from -pi to pi, then compute y=sin(x)
%}
x = linspace(-pi,pi);
y = sin(x);




%% #32. 
%{
Find 2+4+6+8+10 using sum and colon operator
%}
sum(2:2:10);




%% #33. 
%{
Find the sum of the first n terms of a harmonic series.
%}
n = 10; % n >= 1
sum(1./(1:n))



%% #35. 
%{
Create matrix then find the produce of each row and column.
%}
c = randi([10,50], 2, 3);
prod(c,1)  % column
prod(c,2)  % row





%% #43. 
%{
Write code to determine how many elements of a matrix
are negative. 
%}
n = 4;
A = randi([-100,100], n, n);
sum(A<0,'all')

% Alternatively
nnz(A<0)



%% #47. 
%{
The matrix given is rainfall by district (rows) and
by year (columns).  Find which district had the most 
rainfall total for all years.
%}

R = [25 33 29 42;53 44 40 56];
[~,I] = max(sum(R,2));

% Alternatively
find(sum(R,2) == max(sum(R,2)));

% Alt 2. 
[district, ~] = find(R==max(R(:)));


%% #48. 
%{
Generate a vector of 20 random integers from 50-100.
Make a vector that stores all the even values from the 
vector and one for odds too.
%}

x = randi([50,100],20,1);
evens = x(mod(x,2)==0);
odds = x(mod(x,2)==1);



%% #49. 
%{
Assume the function DIFF doesn't exist.  Write an
expression that produces same result for a vector.
%}

n = 10;
x = randi([50,100],n,1);

Diff = x(2:end) - x(1:end-1); 