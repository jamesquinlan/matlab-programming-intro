# Data File Descriptions for File I/O problem set.
# mat225
# quinlan, j

--------------------
cellnumbers.txt
--------------------
The file {cellnumbers.txt} is a list of cell numbers in the 207 area code 
(fake numbers, randomly generated).   The files looks something like:

2072539312
2073863143
2072666331

Read this file of cell numbers and print each in the form: xxx-xxx-xxxx.






--------------------
curly_data.dat
--------------------
The file {curlydata.dat} contains data separated by commas, however, also
includes curly brackets at the beginning and end of each line.  For example, 

{1, 2, 3, 4, 5}
{7, 9, 1, 2, 1}
{5, 2, 2, 8, 7}

Read the data and remove the curly brackets, store in a matrix and save as
a {.mat} file.





--------------------
parts_inv.dat
--------------------
Create a file {parts_inv.dat} that contains the following 
three rows that represent a part number, the cost, and the 
quantity in stock.  

52 7.99 59
45 3.97 121
33 2.25 92


Clear your workspace and use {fgetl} to read this information, 
and print the total \$ amount of inventory (the sum of the cost 
multiplied by the quantity for each part). 

Repeat using  {fscanf} instead of {fgetl}.
% fid=fopen('parts_inv.dat','r')
% fscanf(fid,'%f',[3, inf])


