%Construct an m-file that first asks the user to enter a vector with arbitrary 
% length as a user-defined input which includes positive and negative integers. 
% Then, your code should generate two different vectors where the first 
% vector(named as vpos) includes the positive integers in the entered 
% user-defined vector whereas the second vector(named as vneg) includes the
% negative integers in the entered user-defined vector. In other terms, 
% your code should split up positive and negative integers in the entered 
% user-defined vector. Here, you should use a while loop structure.
% Then, your code should also find out the minimum value of vpos and maximum 
% value of vneg. Here, you are not allowed to use built-in functions such 
% as min, max and sort. You should define your own codes to find out the 
% minimum and maximum values. As an example, if the user defined vector is 
% entered as [ 2 −7 8 −3 6 5 −20], then your code should obtain vpos=[ 2 8 6 5 ] 
% and vneg=[ −7 -3 -20]. Then your code should find out the minimum value of 
% vpos as 2 and the maximum value of vneg as -3 for this example.
% Note: Assume that 0 is not used in the user-defined vector in the beginning 
% of the question. Your code should also be adaptive for the length of the 
% user-defined input vector since the length of this vector is arbitrary.
 
clear all
clc

v = input('Enter a vector: ')
j = 0;
k = 0;
i = 1;
for i = 1 : length(v)
    if v(i) >= 0
        j = j + 1;
        vpos(j) = v(i);
    else
        k = k + 1;
        vneg(k) = v(i);
    end
end
disp('Positive values: ')
disp(vpos)
disp('Negative value: ')
disp(vneg)

t = length(vpos);
u = vpos(1);
z = 1;
for y = 1:t
    if vpos(y) < u
        u = vpos(y);
        z = y;
    end
end
disp('Min value of positive values: ');
disp(u)
