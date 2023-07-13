%%%%%%%%%% question 1 %%%%%%%%%%m,1
clear all
clc

x = input('Enter the values as a vector: ');

m = x(1);
n = x(2);

for i = 1 : m*n
    if mod(m,i) == 0 && mod(n,i) == 0
        sonuc = i;
    end
end
disp(sonuc)

%%%%%%%%%% question 2 %%%%%%%%
clear all
clc

x = input('Enter the 2 values as a vector: ');

m = x(1);
n = x(2);

for i = 1 : m*n
    if mod(m,1) == 0 && mod(n,1) == 0
        sonuc = i;
    end
end
disp(i)

%%%%%%%%%% question 3 %%%%%%%%%
clear all
clc

x = input('Enter the vector: ');
y = length(x);
k = x(1);
n = 1;
for i=1:y
    if x(i)>k
        k = x(i);
        n = i;
    end
end

disp('Max value: ')
disp(k)
disp('Index of the max value: ')
disp(n)
















