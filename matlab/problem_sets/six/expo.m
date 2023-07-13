%%%%%%%%% question 3 %%%%%%%%%
function result = expo(x)
    a = 1;
    r = 0;
    i = 1;
    while a > 10^-6
        r = r + a;
        a = (x^i)/(factorial(i));
        i = i + 1;
    end
    result = r;
end