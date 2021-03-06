clear all;
close all;
clc;

% Uzduoti atliksiu naudojant 'data' faila, nes neisejo legaliai isirasyt
% reikiamo toolbox'o

data = importdata("Data.txt");      %duomenu nuskaitymas

w1 = randn(1);                      %trys parametrai, kuriu reiksmes yra atsitiktines
w2 = randn(1);
b = randn(1);

x1 = data(:,1)';                    %pirmo pozymio eilute
x2 = data(:,2)';                    %antro pozymio eilute
T = data(:,3)';                     %reikalingi atsakkymai
eta = 0.1;                          %mokymosi greitis

for n = 1:1000                      %isvesties ir parametru atnaujinimo ciklas
    for i = 1:length(x1)
        if (x1(i)*w1 + x2(i)*w2 + b) > 0
            y(i) = 1;
        else
            y(i) = -1;
        end
        e(i) = T(i)-y(i);           %momentine klaida
        
        w1 = w1 + eta*e(i)*x1(i);   %trieju parametru atnaujinimas
        w2 = w2 + eta*e(i)*x2(i);
        b = b + eta*e(i);
    end
end

%rezultatu isvedimas
fprintf('Gauti rezultatai:\n');
disp(y);
fprintf('Teisingi rezultatai:\n');
disp(T);
