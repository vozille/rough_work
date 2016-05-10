function [output] = GoldenRatioMethod(func, lower_limit, upper_limit)
f = matlabFunction(func);
a = lower_limit;
b = upper_limit;
phi = (-1 + sqrt(5))/2;
c = b - phi*(b - a);
d = a + phi*(b - a);
while abs(c - d) > 10^-2
    if f(c) < f(d)
        b = d;
        d = c;
        c = b - phi*(b - a);
    else
        a = c;
        c = d;
        d = a + phi*(b - a);
    end
end
output = (b+a)/2;
end

