function [ c ] = radice_bisezione( N )
% Legge un numero intero N e calcola una approssimazione della sua radice
% quadrata
clear
clc

N=input('Inserisci un numero\n');
n=1;
m=1000;
toll=0.000005;
c=(n+m)/2;

while abs((c^2)-N)>toll
    if (c^2)<N
        n=c;
        c=(n+m)/2;
    else
        m=c;
        c=(n+m)/2;
    end
end