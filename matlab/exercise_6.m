%We shall assume that we are given a vector g of positive and negative
%numbers and of orbitary length. Generate a MATLAB code to perform the same
%function as the expression indx = find(g > a) where a is specifed by the
%user. We shall cheek the script with a = 4 and with the vector g =
%[4,4,7,10,-6,42,1,0].

clear all
clc

g = [4, 4, 7, 10, -6, 42, 1, 0];
a = 4;
k = 0;
index = [];

for n = 1 : length(g)
    if g(n) > a
        k = k + 1;
        index(k) = n;
    end
end

disp(index)
disp(g(index))