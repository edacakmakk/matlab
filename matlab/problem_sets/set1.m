%%first solution
a=3;
b=5;
a+b
a-b
a*b
a/b

z=a/b

%%second
clear
clc
x=4*(pi)
sqrt(x)
cos(sqrt(x))

%%third
clear
clc
Y=-1;
sqrt(Y)

%%fourth
clear
clc
x=[1 3 0 -1 5];
disp(x)

%%five
clear
clc
a=[1 2 3];
b=[4 5];
c=[a 0 -b]
a=[1 3 7];
a=[a 0 -1]

%%six
clear
clc
1+2+3
4/2*2
1+2/4
1+2\4
2*2^3
2*3\3
2^(1+2)/3
1/2*exp(1)-1

%%seven
clear
clc
1/2*3
2^(2*3)
1.5*10^-4+2.5*10^-2

%%eight
clear
clc
[2 3 -1]+1
[1 4 8]*3
[1 2 3].*[0 -1 1] % point is the important for here
[2 3 1].^2 % element by element

%%nine
clear
clc
sqrt(2) %karekok
(3+4)/(5+6)
(5+3)/(5*3)
2^(3^2)
sqrt(2*pi)
2*(pi^2)
1/sqrt(2*pi)
1/(2*sqrt(pi))

%%ten
clear
clc
n = [1 2 3 4 5];
format rat 
n.*2
n./2
1./n
1./(n.^2)

%%eleven
clear
clc
x = 0<0.5 & 0.5<1

%%twelve
clear
clc
b = 1:10
log(10)./log(b)

%%thirteen
clear
clc
t=1:0.5:10;
A=4;
w=0.6;
x=A*cos(w*t);
table=[t' x']
disp(table)

%%fourteen
clear
clc
t1=[84.3; 86.4; 85.2; 87.1; 83.1]
t2=[90.0; 89.5; 88.6; 88.9; 88.9]
t3=[86.7; 87.6; 88.3; 88.3; 82.4]
[t1 t2 t3]
three_max=[max(t1) max(t2) max(t3)]
three_min=[min(t1) min(t2) min(t3)]
three_aveg=[mean(t1) mean(t2) mean(t3)]

%%fifteen
clear
clc
a=[15 3 22; 3 8 5; 14 3 82];
b=[1;5;5];
c=[12 18 5 2];
d = a(: ,3)
e=[b d]
f=[b;d]
g=[a;c(1:3)]
h=[a(1,3) c(1,2) b(2,1)]

%%sixteen
clear
clc
A=[12 4; 3 -5];
B=[2 12; 0 0];
x=A*B
Y=B*A
A*B==B*A

A=[1 3 5; 2 4 6];
B=[-2 4; 3 8; 12 -2];
X=A*B
Y=B*A










