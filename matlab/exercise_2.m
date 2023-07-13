% Construct a MATLAB code in order to find out the root of the function 
% f(x) = x3 − x2+5x+3 which is between the interval of -1 and 0 by following 
% the algorithm given below step by step:
%• Two values a and b are chosen (Here, a = -1 and b = 0 are given as the 
% interval bounds in this question).
% -c is calculated as the arithmetic mean of a and b.
%• Function f is evaluated for the value of c.
%• f(c) = 0 means that we found the root of the function, which is c.
%If f(c) 0, we check the sign of f(c).
%• If f(c) has the same sign as f(a) we replace a with c and we keep the same value for b.
%if f(c) has the same sign as f(b), we replace b with c and we keep the same value for a.
%• We go back to second item and recalculate c with the new value of a or b.
%• The algorithm ends when the value of f(c) is less than a defined tolerance 
% (0.001 for this question). Hence, the final solution is c.
%• Finally, you are supposed to construct a vector which contains the value
% of c in every step.

clear all
clc

eps_abs = 1e-3;
eps_step = 1e-3;
a = -1.0;
b = 0.0;
i = 1;
while (b - a >= eps_step || (abs(f(a)) >= eps_abs && abs(f(b)) >= eps_abs))
    c = (a + b)/2;
    cc(i) = c;
    i = i + 1;
    if (f(c) == 0)
        break;
    elseif (f(a)*f(c) < 0)
        b = c;
    else
        a = c;
    end
end
disp(c)
