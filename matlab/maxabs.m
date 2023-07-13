%input parameters A, a matrix, and n, an integer,
%output parameter p where p = -1 if there is no column n in A; otherwise p
%is the maximum absolute value in column n of A

function p = maxabs(A, n)
[q,r] = size(A);
if n>r || n<1
    p = -1;
else
    p = max(abs(A(:,n)));
end