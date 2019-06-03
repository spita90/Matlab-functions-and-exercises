clear
clc

I=[-1 1];            %intervallo  -2 / 2
f=[2 0 0 -1];        %con la formulazione di Horner equivale a 2x^3 -1
toll=0.00001;        %tolleranza d'errore
itermax=20;          %numero massimo di iterazioni

z=bisezione(I,f,toll,itermax);
disp(z);