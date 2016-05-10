function [output] = Secant(func)
% f = orignial function
% x0, x1, x2 = iterative values
% output = final answer
% By CET Mechanical A 2017
f = matlabFunction(func); % symbolic function to mathematical function
x0 = -10; % assign any random value such that |x1 - x0| is large
x1 = 10; % assign any random value such that |x1 - x0| is large
a = []; % stores all the points , useful for plotting
for i = 1:1000000 % do iteration lot of times to increase accuracy
    denominator = f(x1) - f(x0);
    if abs(denominator) < 10^-30 % denominator approaching zero, so exit
        break
    end
    x2 = x1 - f(x1)*(x1 - x0)/denominator;
    x0 = x1; % basically moving forward to x3,x4,etc
    x1 = x2;
    a = [a, x2];
end
output = a;
end
