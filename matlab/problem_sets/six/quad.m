%%%%%%%%% question 4 %%%%%%%%
function [x, flag] = quad(a,b,c)
    if a == 0 && b == 0 && c ~= 0
        flag = 0;
        x = 'No solution';
    elseif a == 0 && b == 0
        flag = 1; 
        x = -c/b;
    elseif a == 0 && b == 0 && c == 0
        flag = 99;
        x = 'Infinite solution';
    else
        flag = 2;
        delta = b^2 - 4*a*c;
        x1 = (-b + sqrt(delta)) / (2*a);
        x2 = (-b - sqrt(delta)) / (2*a);
        x = [x1 x2];
    end

end