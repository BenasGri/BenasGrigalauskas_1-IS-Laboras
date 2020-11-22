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