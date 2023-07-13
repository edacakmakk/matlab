%%%%%%%%% question 5 %%%%%%%%
function output = cosi(x)
    r = 0;
    i = 1;
    while true
        a = ((-1)^(i-1)*x^(2*(i-1)))/(factorial(2*(i-1)));
        r = r + a;
        i = i + 1;
        if abs(a) < 0.0001
            break
        end
    end
    output = r;
end