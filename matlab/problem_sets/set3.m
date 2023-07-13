%one
clear
clc
x=input('Please enter the a vector: ');

counter=1;

s1=0;
s2=0;

for k=1:length(x) %for loop to define all the companents of the vector
    s1=s1+x(k); %summation of vector components
end

while counter <=length(x)
    s2=s2+x(counter);
    counter=counter+1;
end

fprintf('Result for (for loop):%f\n ',s1);
fprintf('Result for (while loop):%f\n ',s2);

sum(x) % matlab function

%two
clear
clc
a(1)=input('Enter the first number: ');
a(2)=input('Enter the second number: ');
req=input('Enter how many elements requested for the sequence: ');

for i=1: (req-2)

end

%three
i=1; %counter element
while i<=(req-2)
   a(i+2)=a(i)+a(i+1);
   i=i+1;
end
disp(a)

%four
clear
clc
x(1)=input('Enter the first number: ');
x(2)=input('Enter the second number: ');
x(3)=x(2)+x(1); %to check condition we need 3 elements
k=3;

while abs(x(k)/x(k-1)-x(k-1)/x(k-2))>0.001 %when it is violated loop stops
    k=k+1;
    x(k)=x(k-1)+x(k-2);
end
disp(x)

%five
clear
clc
%there are 3 input these are number, gues, tolerance
A=input('enter the number that will be taken square root: ');
x(1)=input('Enter the initial quess: ');
e=input('Enter the convergence criterion: ');

n=1; %initial element number
y(n)=(1/A)*(x(n)^2); %formula
x(n+1)=(x(n)/8)*(15-y(n)*(10-3*y(n)));

while abs(a(n+1)-x(n)) > e
    n=n+1;
    y(n)=(1/A)*(x(n)^2);
    x(n+1)=(x(n)/8)*(15-y(n)*(10-3*y(n)));
end
disp(x(n+1)) %Edmond Halley algoritim
%sqrt(500) %matlab function



