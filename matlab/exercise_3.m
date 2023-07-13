% In the beginning of the code, n(assumed as an odd number) is defined as a 
% user-defined input. Here, n is the size of the square matrix that should 
% be obtained at the end of the code. The obtained n-sized square matrix 
% will involve circular rings of the numbers 1 through (n+1)/2 around the center point.
% As an example, if n=3, the matrix that is obtained will be
%    1 1 1
% A= 1 2 1
%    1 1 1
% As an example, if n=3, the matrix that is obtained will be
%    1 1 1 1 1
%    1 2 2 2 1
% A= 1 2 3 2 1
%    1 2 2 2 1
%    1 1 1 1 1
% These examples are given here to explain the logic and structure of the 
% matrix that you are supposed to obtain. Your code should automatically 
% construct the matrix according to the user- defined size n. Here, you are
% not allowed to locate the numbers manually inside the matrix, the code 
% should do this automatically by the help of loops and decision structures. 
% You are not allowed to use any function that is not covered within the 
% content of the course]
% Finally, your code should write the matrix that you obtained into an Excel 
% file called as "Ma- trix.xlsx".

clear all
clc

n = input('Matrix Size: ');
A = zeros(n);
middle = ceil(n/2);
A(middle, middle) = ceil(n/2);
incr = 1;
init = 1;
while (middle - incr) > 0
    A(middle - incr, middle - incr: middle + incr) = middle - incr;
    A(middle + incr, middle - incr: middle + incr) = middle - incr;
    A(middle - incr : middle + incr, middle - incr) = middle - incr;
    A(middle - incr : middle + incr, middle + incr) = middle - incr;
    incr = incr + 1;
end
disp(A)
