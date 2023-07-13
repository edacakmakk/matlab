%%one two three
clear
clc
disp('question 1')
x=input('Enter the value of x: ');
y=sin(x)
disp('question 2')
[x]=input('Enter an array: '); 
disp(length(x))

%%four
clear
clc
a=input('Enter the starting temperature: ');
b=input('Enter the increment value between lines: ');
z=input('Enter the number of lines: ');
C=a:b:(a+b*(z-1))
F=(9/5*C)+32
Celcius=C'
Fahrenheith=F'
T=table(Celcius, Fahrenheith)

%%five
clear
clc
v0=input('Enter the positive value of v0: ');
g=9.8;
h0=0;
h_max=h0+(v0^2)/(2*g)
tf=2*(v0/g)
t1=floor(100*tf)
tr=t1/100
tv=0:0.01:tr
hv=v0*tv-0.5*g*tv.*tv
m=[tv', hv']
plot(tv, hv)

%floor command usage for you
x=2.5
y=floor(x) %2
x=-2.5
y=floor(x) %-3
x=[2.5 3.5 4.3]
y=floor(x)

%%six
clear
clc
x=input('Enter the value of x: ');
y=input('Enter the value of y: ');
if x>y
    disp('x>y')
else
    disp('x<=y')
end

%%seven
clear
clc
x=input('Enter the value of x: ');
if -1<=x && x<=1
    asin(x)
else
    error('The value you have enter this outside the range')
end

%%eight
clear
clc
F=input('Enter a scalar value of outside air temperature: ');
if F>=80
    display('Today is hot. You should wear shorts')
elseif F>60 && F<80
    display('That is beatiful day')
elseif F<=60
    display('You should wear a jacket or coat')
end

%%nine
clear
clc
NumberOfDepartment=[1;2;3;4;5];
Department={'Civil Engineering'; 'Chemical Engineering';'Computer Engineering'; 'Electrical Engineering'; 'Mechanical Engineering';}
display(table(NumberOfDepartment))
y=[130; 130; 122; 126.5; 129];
x=input('Enter the number of department: ');
switch x
    case 1
        disp('Minimum number of credits required for graduation: ');
        disp(y(1))
    case 2
        disp('Minimum number of credits required for graduation: ');
        disp(y(2))
    case 3
        disp('Minimum number of credits required for graduation: ');
        disp(y(3))
    case 4
        disp('Minimum number of credits required for graduation: ');
        disp(y(4))
    case 5
        disp('Minimum number of credits required for graduation: ');
        disp(y(5))
    otherwise
        disp('You have enter the invalid value, enter again: ');
        z=input('Enter the number of your department: ');
        disp(y(z))
end








