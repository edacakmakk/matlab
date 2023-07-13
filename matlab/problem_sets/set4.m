%%%%%%%%%% question 1 %%%%%%%%%
clear all
clc

x = input('Please anter a vector: ');
counter = 1;
s1 = 0;
s2 = 0;

for k = 1: length(x)
    s1 = s1 + x(k);
end

while counter <= length(x)
    s2 = s2 + x(counter);
    counter = counter + 1;
end

fprintf('Result for (for loop):%f\n ',s1);
fprintf('Result for (while loop):%f\n ',s2);

%%%%%%%%%% question 2 %%%%%%%%%%
clear all
clc

a(1) = input('Enter the first number: ');
a(2) = input('Enter the second number: ');
req = input('Enter how many elements requested for the sequence: ');

for i = 1 : (req - 2)
    a(i+2) = a(i) + a(i+1);
end

disp(a)

%%%%%%%%%% question 4 %%%%%%%%
clear all
clc

x(1) = input('Enter the first number: ');
x(2) = input('Enter the second number: ');
x(3) = x(1) + x(2);
k = 3;

while abs(x(k)/x(k-1)-x(k-1)/x(k-2)) > 0.001 % abs: mutlak değer
    k = k + 1;
    x(k) = x(k-1) + x(k-2);
end
disp(x)

%%%%%%%%%%% question 5 %%%%%%%%%%
clear all
clc

a = input('Enter the number that will be taken square root: ');
x(1) = input('Enter the initial quess: ');
e = input('Enter the convergence criterion: ');

n = 1;
y(n) = (1/a)*(x(n)^2);
x(n+1) = (x(n)/8)*(15-y(n)*(10-3*y(n)));

while (x(n+1)- x(n)) > e
    n = n+1;
    y(n) = (1/a)*(x(n)^2);
    x(n+1) = (x(n)/8)*(15-y(n)*(10-3*y(n)));
end

disp(x(n+1))