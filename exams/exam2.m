%% # 1.
%{
How to get help on structures?
%}
help struct




%% # 2.
%{
Create an empty structure named exam with one field named n.
%}

exam = struct('n',[]);



%% # 3.
%{
Suppose there already exists a text file, number.txt, containing a list of
positive integers.  Read this file and select a random entry, then store
that value in n from Problem 2.  
%}


fid = fopen('numbers.txt','r');
nums = zeros(10,1);
i = 1;
while ~feof(fid)
    nums(i) = str2double(fgetl(fid));
   % fprintf('%d\n',fgetl(fid));
   i = i +1;
end
fclose(fid);
nums = nums(nums > 0);

% Alt. 
% fid = fopen('numbers.txt','r');
% A = fscanf(fid,'%d',[1,inf])';
% fclose(fid);

% Random
randele = randi([1, length(nums)],1,1);
exam.n = nums(randele);



%% # 4.
%{
Create a random integer vector over the range -10 to 10 of length n from
Problem 2.  Store this vector in the exam structure in a field named x.
%}
exam.x = randi([-10,10], 1, exam.n);



%% # 5.
%{
Deteremine how many values are negative in the vector x of the exam
structure defined in Problem 2.
%}

sum(exam.x < 0);

% Alt.
numneg = 0;
for i = 1:length(exam.x)
   if exam.x(i) < 0
       numneg = numneg +  1;
   end
end
numneg



%% # 6.
%{
Change every entry of x in the exam structure to be positive.  Store this
"positives" vector in a field named y. 
%}

exam.y = abs(exam.x);

% alt.
exam.y = exam.x;
for i = 1:length(exam.x)
   if exam.y(i) < 0 
      exam.y(i) = -exam.y(i);
   end
end


%% # 7.
%{
Determine if there are any zeros in the "positive" vector y of the
structure.
%}

any(exam.y == 0);

negs = false;
for i = 1:length(exam.y)
    if exam.y(i) < 0
        negs = true;
        break
    end
end


%% # 8.
%{
Export the list of "positives" (exam.y) to a file named positive.txt
%}

fid = fopen('positives.txt','w');
for i = 1:length(exam.y)
   fprintf(fid,'%d\n',exam.y(i)); 
end
fclose(fid);





%% # 9.
%{
Write code to determine \underline{how many terms} in the sequence $3k^2$, 
for $k$ equal to the elements of the ``positives'' vector {\tt y} are 
required for the sum of the terms to exceed $100 \cdot n$ where $n$ is the 
length of this list. Store this value in the {\tt exam} structure in a 
field named {\tt num\_terms}.  
%}

% v.1
find(cumsum(3*(exam.y).^2) < 100*length(exam.y), 1,'last');

%% Alternatively
f = @(k) 3*k.^2;
S = 0;
numterms = -1;
while (S < 100*length(exam.y))
   numterms = numterms + 1;
   S = S +  f(exam.y(numterms+1));   
end
fprintf('It takes %d terms to exceed that value.\n\n', numterms);


%% # 10.
%{
Represent the following data on Homer J. Simpson that includes (name, 
street address, city, ages of everyone in household, dog's name, and beers 
per day of the week)  using a cell array.  Note the apostrophe in the dog's 
name.  Then specify the code needed to find the age of Homer's kid Bart, 
who is $10$ years old.   
%}

homer = {'Homer J. Simpson', '742 Evergreen Terrence', 'Springfield';...
            [42, 39, 10, 8, 3], 'Santa''s Little Helper' ,[2,2,4,1,3,6,9]};
        
homer{2,1}(3);
        