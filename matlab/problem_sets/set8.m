%%%%%%%%%% question 1 %%%%%%%%%
clear all
clc

sum_double = 0;
sum_single = single(0);

for i=1:10000000
    sum_double = sum_double + (1/i);
end

disp(sum_double)

for i=1:10000000
    sum_single = sum_single + single(1/i); %we cannot define single range
end

disp(sum_single)

%%%%%%%%%%%% question 2 %%%%%%%%%%%
clear all
clc

c_double = 5 + 3i;
c_single = single(5 + 3i);
disp(c_double^100)
disp(c_single^100) %we cannot define single range

%%%%%%%%%%%%%% question 4 %%%%%%%%%%%%
clear all
clc

A = [1 2; 3 4];
B = [10, 20; 30 40];
C = [3 16; 9 12];

ABC = zeros(2,2,3)

ABC(:,:,1) = A;
ABC(:,:,2) = B;
ABC(:,:,3) = C;

Col = [ABC(:,1,1) ABC(:,1,2) ABC(:,1,3)]
Row = [ABC(2,:,1); ABC(2,:,2); ABC(2,:,3)]
ABC(1,2,3)

%%%%%%%%%%% question 5 %%%%%%%%%%
clear all
clc

array = ['box1 1 3 5'; 'box2 2 4 6'; 'box3 6 7 3'; 'box4 1 4 3']; %this and
array = char('box1 1 3 5', 'box2 2 4 6', 'box3 6 7 3', 'box4 1 4 3'); % this have same conclusion

sizes = str2num(array(:,6:10))

volume = sizes(:,1).*sizes(:,2).*sizes(:,3)

%%%%%%%%%%% question 6 %%%%%%%%%%
clear all
clc

a = [1 3 5; 3 9 2; 11 8 2];
b = char('fred ralph', 'ken susan');
c = int8([4;6;3;1]);

sample_cell = {a,b,c}
sample_cell{1,1}
sample_cell{3}
sample_cell{3}(3)
sample_cell{2}(1,1:4)

%%%%%%%%%% question 7 %%%%%%%%
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

Table = struct2table(structure)

max(structure.density)

[value, index] = max(structure.density)

structure.metal(index)

fprintf('metal with hightst density is: %s \n', structure.metal(index))
fprintf('metal with hightst density is: %s \n', structure.symbol(index))






