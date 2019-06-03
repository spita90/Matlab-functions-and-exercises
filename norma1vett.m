function [ n ] = norma1vett( v )
% Calcola la norma 1 di un vettore, ossia la somma dei valori assoluti
% degli elementi del vettore.

n=0;
for i=1:(size(v,2))
    n=n+abs(v(i));
end
