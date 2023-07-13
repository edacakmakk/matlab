%1. Construct a MATLAB code by using while loop and if-elseif-else structure 
% that asks users for 3 times (max-guess variable) to guess values of x for 
% which x - cos(x) will be close to zero. 
% Here, the variable tol = 0.1 is used to indica? how far from zero is 
% acceptable to be close enough.(As tol=0.1 is used in the question, the values 
% within the interval of -0.1 < x-cos(x) < 0.1 will be accepted as close enough to zero)
%• The variable max-guess = 3 is used to set the maximum guess number allowed 
% (As max-guess 3 is used in the question, your code can ask the user at most 
% 3 times to enter guess values of x).
%• When x-cos(x) is not close enough for one guess, the code prompts the value 
% of x-cos(x), then continues and asks for the next guess of x. If - cos(x) 
% is close enough for one of the guess of x, the code first prompts "x-cos(x)
%is close enough" message, also prompts the value of x-cos(x) and stops. 
% If x- cos(x) value is not close enough to zero after 3 guess, then the code 
% prompts "Your guess limit is reached" message and stops.
%The code should also prompt the value of a cos(x) for every guess of r in 
% every step before it asks the user for the next guess.
%• Here, tol and max-guess variables are defined in the beginning of the code 
% as they are given in the question and x is defined as a user-defined input 
% inside the loop.

clear all
clc

tol = 1e-1; max_guess = 3; y = 2*tol; n = 0;
while true
    if abs(y) > tol && n < max_guess
        x = input('Enter your guess: ');
        y = x - cos(x);
        disp('Value is ')
        disp(y)
        n = n + 1;
    elseif abs(y) <= tol && n < max_guess
        disp(x)
        disp(' is close enough')
        disp('Value is ')
        disp(y)
        break
    else
        disp('Your guess limit is reached.')
        break
    end
end

%Let the following polynomial represent the velocity of a weather balloon 
% following the launch: v(t) = -0.25t3+36t2-760t+4100
%Here, "t" needs to be defined as a symbolic variable. By using the given 
% velocity polynomial, construct a MATLAB code to:
%a) Find the altitude polynomial of the balloon in terms of t where constant 
% term of the altitude polynomial is defined as "last two digits of your 
% student number+5" (for instance, if your student number is 01607158, then 
% the constant term is 58+5=65).
%b) Determine when the balloon hits the ground (Your code should give one 
% exact answer as an acceptable numerical value for t).
%c) Obtain plots of altitude and velocity from time 0 until the balloon hits 
% the ground by using the command "ezplot".

clear all
clc

syms t
velocity = -0.25*t^3+36*t^2-760*t+4100;

altitude = int(velocity);
altitude = altitude + 15;

y = sym2poly(altitude);
sol = roots(y);
x = sol(imag(sol) == 0 & sol >= 0);
figure(1)
ezplot(altitude, [0,x])
figure(2)
ezplot(velocity, [0,x])



