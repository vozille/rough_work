function [output] = Bisection(func, a, b)
% f = orignial function
% a,b = the original boundary values
% output = final answer
% By CET Mechanical A 2017
f = matlabFunction(func); % symbolic function to mathematical function
r = []; % stores all the points, useful for plotting
while 1 > 0 % Run till f(x) is not sufficiently close to zero
    x = (a+b)/2;
    r = [r x];
    if abs(f(x)) < 10^-10 % f(x) is close to zero, exit loop
        break
    end
    if f(x)*f(a) > 0
        a = x;
    end
    if f(x)*f(b) > 0
        b = x;
    end
end
output = r;
end
