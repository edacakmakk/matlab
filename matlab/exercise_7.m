%Construct a MATLAB code which determines whether the three sides whose 
% lengths are given as the elements of a user-defined input vector, 
% can form a triangle or not. Here, while you construct your code you need 
% to use the geometry rule that says "if the sum of two shortest sides is 
% greater than the longest side, the given lengths(sides) can form a triangle.
%The code will display two output variables called "istri" and "typetri". 
% Here, "istri" is a logical variable (either 0 or 1) where "0" means the 
% given side lengths can not form a triangle whereas "1" means the given side 
% lengths can form a triangle.If the value of "istri" is logical 1, then "typetri" 
% variable is defined as a string vari- able which defines the triangle type as 
% 'Scalene' (Cesitkenar), 'Equilateral' (Eskenar) and 'Isosceles (Ikizkenar) 
% according to the lengths of the given sides.Finally, if the value of "istri" 
% is logical 1, the code that you construct should plot a triangle by using 
% "plot" command with the given side lengths in the user-defined input vector. 
% Here, the location of the points of the triangle are arbitrary.

clear all
clc

L = input('Length of sides for triangle: ');
isTri = false;
typeTri = '';
%create a sorted array of the inputs lengths
s = sort(L);
if (s(1)+s(2)) > s(3)
    %if the sum of the two shortes sides is greater than the longest side,
    %the lengths can from triangle
    isTri = true;
    typeTri = 'Scalene';

    if s(1) == s(3)
        %if the shortest and longest lengths are equal, it implies that all
        %three lengths are equal, and that the three sides from an
        %equilateral triangle.
        typeTri = 'Equilateral';
    elseif s(1) == s(2) || s(2) == s(3)
        %if middle length is equal to either the longest or shortest
        %length, the lengths from an isosceles triangle.
        typeTri = 'Isosceles';
    end
end
disp(isTri)
disp(typeTri)

ang = acos((s(1)^2 + s(2)^2 -s(3)^2)/(2*s(1)*s(2)))
if (isreal(ang))
    plot([0,s(1),s(2)*cos(ang),0],[0,0,s(2)*sin(ang),0])
end


%Construct a MATLAB code to create a vector containing the Fibonacci Sequence 
% where the first two values of the sequence are given as user-defined inputs. 
% The code is supposed to stop generating the Fibonacci sequence when there are 
% 5 odd numbers in the sequence. As an example, if the sequence starts with the 
% values 1 and 2, then the output vector of the code should be [1 2 3 5 8 13 21] 
% where there are 5 odd numbers in the sequence.Your code should stop with the 
% same condition (5 odd numbers in the sequence) for different starting values of 
% Fibonacci sequence.

clear all
clc
f(1) = 1;
f(2) = 6;
for j = 3:100
    f(j) = f(j-1) + f(j-2);
    odds = f(mod(f,2) ~= 0);
    if length (odds) == 5;
        break
    end
end
disp(f)




