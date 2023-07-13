clear all
clc

total = 0;
x = input('Enter the cost of  the first item: ');

while x ~= 0
    total = total + x;
    x = input('Enter the cost of an additional item: ');
end

y = input('Enter the payment: ');
change = y - total
