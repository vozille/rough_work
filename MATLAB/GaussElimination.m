function [output] = GaussElimination(coefficients, constants)
% coefficients = the coefficient matrix of variables
% constants = the matrix of all the constant terms in equation when in RHS
% n = number of equations
% values = array storing the values of all variables in equation
% By CET Mechanical A 2017
%
n = length(constants);
values = zeros(n,1); % 1 dimensional array to store coeffcients
% Forward Elimination which converts matrix to RREF
for k = 1:n - 1
    for i = k + 1:n
        c = coefficients(i,k)/coefficients(k,k); % A constant factor
        for j = k + 1:n
            coefficients(i,j) = coefficients(i,j) - c*coefficients(k,j);
        end
        constants(i) = constants(i) - c*constants(k);
    end
end
coefficients = coefficients
% Back Substitution
% Get value of one variable, substitute in next equation and continue till
% we get the values of all variables
values(n) = constants(n)/coefficients(n,n);
for i = n - 1:-1:1
    s = constants(i);
    for j = i+1:n
        s = s - coefficients(i,j)*values(j);
    end
    values(i) = s/coefficients(i,i);
end
output = values;
end
