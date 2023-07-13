%%%%%%%%%%% question 1 %%%%%%%%%
clear all
clc

metal = ["aluminum"; "copper"; "iron"; "molybdenum"; "cobalt"; "vanadium"];
symbol = ["Al"; "Cu"; "Fe"; "Mo"; "Co"; "V"];
atomicN = [13;29;26;42;27;23];
atomicW = [26.98;63.55;55.85;95.94;58.93;50.94];
density = [2.71;8.94;7.87;10.22;8.9;6.0];
cs = ["FCC"; "FCC"; "BCC"; "BCC"; "HCP"; "BCC"];

structure.metal = metal;
structure.symbol = symbol;
structure.atomicN = atomicN;
structure.atomicW = atomicW;
structure.cs = cs;
structure.density = density;

Table = struct2table(structure);

writetable(Table, 'prop_nine.xlsx');

%%%%%%%%%%% question 2 %%%%%%%%%%%
clear all
clc

syms a b c d x
se1 = x^3-3*x^2+x;
se2 = sin(x) + tan(x);
se3 = (2*x^2-3*x-2)/(x^2-5*x);
se4 = (x^2-9)/(x+3);

%%%%%%%%%%%%% question 3 %%%%%%%%%%%%
se1/se2
se3*se4
se1+se3

%%%%%%%%%%%%% question 4 %%%%%%%%%%%
syms x y a b c d
sq1 = x^2+y^2 == 4
sq2 = 5*x^2-4*x^4+3*x^3+2*x^2-x == 24
sq3 = sin(a) + cos(b) - x*c == d
sq4 = (x^3-3*x)/(3-x) == 14

%%%%%%%%%% question 5 %%%%%%%%
[num1, den1] = numden(se4)
%[num2,den2] = numden(sq4)
%numden function does not work with equations.

%%%%%%%%%%% question 6 %%%%%%%%%%
expand(se1)
factor(se1)
collect(se1)
simplify(se1)

expand(se2)
factor(se2)
collect(se2)
simplify(se2)

expand(se3)
factor(se3)
collect(se3)
simplify(se3)

expand(se4)
factor(se4)
collect(se4)
simplify(se4)

expand(sq1)
%factor(sq1)
collect(sq1)
simplify(sq1)

expand(sq2)
%factor(sq2) factor function does not with symbolic equation
collect(sq2)
simplify(sq2)

expand(sq3)
%factor(sq3)
collect(sq3)
simplify(sq3)

expand(sq4)
%factor(sq4)
collect(sq4)
simplify(sq4)

%%%%%%%%%%%%% question 7 %%%%%%%%%%%
double(solve(se1, x))
solve(se2, x)
solve(se3, x)
solve(se4, x)

%%%%%%%%%%% question 8-9 %%%%%%%%%
clear all
clc

syms f m g L I

2*pi*f == ((m*g*L)/I)^(1/2);
expression_of_L = solve(2*pi*f == ((m*g*L)/I)^(1/2), L)
value_of_L = double(subs(expression_of_L, {m,f,I,g},{10, 0.2, 60, 9.8}))

%%%%%%%%%%%%%%% question 10 %%%%%%%%%%%%%
syms KE m V
kinetic_energy = KE == 1/2*m*V^2
solv = solve(kinetic_energy, V)

%%%%%%%%%% ***question 11*** %%%%%%%%%%
clear all
clc

syms t positive;
height = -0.12*t^4 + 12*t^3 - 380*t^2 + 4100*t + 220;
velocity = diff(height)
acceleration = diff(velocity)
t_ground = double(solve(height))

figure(1);
ezplot(height,[0, t_ground]);
title('Position of the Ballon');
xlabel('time, s');
ylabel('Height above the ground, m');

figure(2);
ezplot(velocity, [0, t_ground]);
title('Velocity of the Ballon');
xlabel('time, s');
ylabel('velocity, m/s');

figure(3);
ezplot(acceleration, [0, t_ground]);
title('Acceleration of the Ballon');
xlabel('time, s');
ylabel('acceleration, m/s^2');

t_max_height = max(double(solve(velocity)));
max_height = double(subs(height, t, t_max_height))

%extra

figure(4);
subplot(2,2,1);ezplot(height,[0, t_ground]);title('Position of the Ballon');xlabel('time, s');ylabel('Height above the ground, m');
subplot(2,2,2);ezplot(velocity, [0, t_ground]);title('Velocity of the Ballon');xlabel('time, s');ylabel('velocity, m/s');
subplot(2,2,3);ezplot(acceleration, [0, t_ground]);title('Acceleration of the Ballon');xlabel('time, s');ylabel('acceleration, m/s^2');






