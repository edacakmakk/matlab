%%%%%%%%%% question 1 %%%%%%%%%%
function y = fact(x)
    while length(x) ~= 1 || x < 0
          x = input('Enter a valid number: ');
    end
    f = 1;
    if x > 0
        for i = 1:x
            f = f * i;
        end
    else
        f = 1;
    end
    y = f;
end