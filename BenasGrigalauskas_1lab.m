clear all;
close all;
clc;

% Uzduoti atliksiu naudojant 'data' faila, nes neisejo legaliai isirasyt
% reikiamo toolbox'o

data = importdata("Data.txt");
w1 = randn(1);
w2 = randn(1);
b = randn(1);
x1 = data(:,1)';
x2 = data(:,2)';
T = data(:,3)';
eta = 0.25;

for i = 1:length(x1)
    if (x1(i)*w1 + x2(i)*w2 + b) > 0
        y(i) = 1;
    else
        y(i) = -1;
    end
    e(i) = Y(i)-y(i);         %momentine klaida
    w1(i+1) = w1(i) + eta*e(i)*x1(i);
    w2(i+1) = w2(i) + eta*e(i)*x2(i);
    b(i+1) = b(i) + eta*e(i);
end