function [ n ] = norma2vett( v )
% Calcola la norma 2 di un vettore, ossia la radice quadrata della
% sommatoria dei quadrati dei valori assoluti degli elementi del vettore.
% Nota: quadrati di valori assoluti? che bisogno c'è dei valori assoluti?
% Così facendo l'algoritmo è compatibile coi numeri complessi!

n=0;
for i=1:(size(v,2))
    n=n+(abs(v(i))^2);
end
n=sqrt(n);
