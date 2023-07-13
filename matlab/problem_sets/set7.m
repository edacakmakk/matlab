%%%%%%%%%%%%% question 1-4 %%%%%%%%%%%%%
close all
clear all
clc

x = 0:0.1:10;

y1 = exp(x);
y2 = sin(x);
y3 = 5*x.^2+2*x+4;
y4 = sqrt(x);

figure(1);
plot(x,y1);
title('y = e^x');
xlabel('x axis');
ylabel('y axis');
grid on;

figure(2);
plot(x,y2);
title('y = sin(x)');
xlabel('x axis');
ylabel('y axis');
grid on;

figure(3);
plot(x,y3);
title('y = 5*x.^2+2*x+4');
xlabel('x axis');
ylabel('y axis');
grid on;

figure(4);
plot(x,y4);
title('y = sqrt(x)');
xlabel('x axis');
ylabel('y axis');
grid on;

figure(5);
subplot(2,2,1);plot(x,y1);title('y = e^x');xlabel('x axis');ylabel('y axis');grid on;
subplot(2,2,2);plot(x,y2);title('y = sin(x)');xlabel('x axis');ylabel('y axis');grid on;
subplot(2,2,3);plot(x,y3);title('y = 5*x.^2+2*x+4');xlabel('x axis');ylabel('y axis');grid on;
subplot(2,2,4);plot(x,y4);title('y = sqrt(x)');xlabel('x axis');ylabel('y axis');grid on;

%%%%%%%%%%%%% question 2 %%%%%%%%%%
close all
clear all
clc

x = -pi:pi/100:pi;

y1 = sin(x);
y2 = sin(2*x);
y3 = sin(3*x);

plot(x,y1,'--r',x,y2,'-b',x,y3,':g');
title('Graph of sin(x, 2x, 3x)');
xlabel('x');
ylabel('sin(x, 2x, 3x)');
legend('sin(x)', 'sin(2x)', 'sin(3x)');
xlim([-6 6])

%%%%%%%%%%%% question 3-5 %%%%%%%%%%
close all
clear all
clc

v0 = 100;
g = 9.8;
theta = pi/4;
time = 0:0.01:20;

horizontal = time*v0*cos(theta);

vertical = time*v0*sin(theta)-((g*time.^2)/2);

figure(1);plot(time, horizontal);title('The distane travelled horizontally');
xlabel('time, sec');ylabel('herizontal distance, m');grid on;

figure(2);plot(time, vertical);title('The distane travelled vertically');
xlabel('time, sec');ylabel('vertical distance, m');grid on;

figure(3);plot(horizontal, vertical);title('The distane travelled horizontally and vertically');
xlabel('horizontal distance, m');ylabel('vertical distance, m');grid on;

theta1 = pi/2;
theta2 = pi/4;
theta3 = pi/6;

horizontal1 = time*v0*cos(theta1);
horizontal2 = time*v0*cos(theta2);
horizontal3 = time*v0*cos(theta3);

vertical1 = time*v0*sin(theta1)-((g*time.^2)/2);
vertical2 = time*v0*sin(theta2)-((g*time.^2)/2);
vertical3 = time*v0*sin(theta3)-((g*time.^2)/2);

figure(4);plot(horizontal1, vertical1, '-r',  horizontal2, vertical2, '--b', horizontal3, vertical3, ':m')
xlabel('Horizontal distances');ylabel('vertical distances');legend('h1-v1', 'h2-v2', 'h3-v3')

figure(5);
subplot(2,2,1);plot(time, horizontal);title('the distance travelled horizontally');
xlabel('time, sec');ylabel('herizontal distance, m');grid on;

subplot(2,2,2);plot(time, vertical);title('The distane travelled vertically');
xlabel('time, sec');ylabel('vertical distance, m');grid on;

subplot(2,2,3);plot(horizontal, vertical);title('The distane travelled horizontally and vertically');
xlabel('horizontal distance, m');ylabel('vertical distance, m');grid on;

subplot(2,2,4);plot(horizontal1, vertical1, '-r',  horizontal2, vertical2, '--b', horizontal3, vertical3, ':m')
xlabel('Horizontal distances');ylabel('vertical distances');legend('h1-v1', 'h2-v2', 'h3-v3')









