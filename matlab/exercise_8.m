%Generate an m-file by using while loops and if-else structures where the
%code firstly prompts the user to enter a value for n. Here the program
%should prompt the user to enter a value for n over and over again until 
% n > 1 condition is satisfied where n should also be an integer. Then the
% code is supposed to execute the stated iterative sequence of events as
% follows: 
%   -If n is even, replace it with n/2.
%   -If n is odd, replace it with 3n + 1.
%   -If n = 1, stop.
%here the should generate a vector that contains all the values of n which
%are calculated in every step of iterative produce.

clear all
clc

i = 1;
n = input('Enter a  positive value: ');

while n < 1 || rem(n,1) ~= 0
    n = input('Enter a positive value: ');
end

while n > 1
    if rem(n, 2) == 0
        n = n/2;
    else
        n = 3*n + 1;
    end
    n_vec(i) = n;
    i = i + 1;
end
disp(n_vec)

%Generate n m-file to find the minimum value with its index in a given
%matrix without using the function "min".
%Here, the given matrix should be defined as a user-defined input, the code
%should be adaptive for the size of matrix. Moreover, it is assumed that
%all of the elements in the matrix are different than each other.
%The result of your code should be the minimum value in the matrix and its 
%index as a vector such that [row column]

clear all
clc

x = [50 -2 4 5;
    3 0 -1 15;
    8 9 -20 6];

min1 = x(1,1);
idx = [1,1];
[a, b] = size(x);

for jj = 1:b
    for ii = 1:a
        if x(ii, jj) < min1
            min1 = x(ii, jj);
            idx = [ii jj];
        end
    end
end
disp(idx)

