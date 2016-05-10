function [output] = NewtonRapson(func)
% This is used to calculate a root of a function func using Newton Rapson
% f = orignial function
% g = derivative of f
% x0, x1 = iterative values
% output = final answer
% By CET Mechanical Section A 2017 batch
f = matlabFunction(func);
g = matlabFunction(diff(func));
x0 = 0.5; % assign any random value
a = []; % stores all the points, useful for plotting
for i = 1:10000 % do iteration lot of times to increase accuracy
    a = [a x0];
    if g(x0) == 0 % we have reached the root
        break
    end
    x1 = x0 - f(x0)/g(x0);
    if abs(x1 - x0) < 10^-30 %too small a difference, so stop
        break
    end
    x0 = x1; % basically x0 becomes x1, next time x0 becomes x2, etc
end
output = a;
end
