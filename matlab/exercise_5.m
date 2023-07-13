%Generate a MATLAB code to obtain an (nxn) matrix whose elements
%are either +1 or -1 such that the sign of each element is different 
%from its adjacent elements, both from those above and below it and those
%on either side of it. The selection of n is arbitary and should be promted
%to user as "Enter the order of the square matrix: " in the beginning of
%the code. Thus, we want to create the matrix. 

clear all
clc

n = input('Enter the order of the square matrix: ');
k = 1:n;
M = zeros(n, n);
oddRow = (-1).^(k-1);
evenRow = (-1).^k;

for m = 1:2:n
    M(m,:) = oddRow;
    if m+1 <= n
        M(m+1, :) = evenRow;
    end
end
disp(M)