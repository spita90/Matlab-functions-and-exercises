function [ n ] = normaInfVett( v )
% Calcola la norma infinito di un vettore, ossia restituisce semplicemente
% il massimo dei valori assoluti degli elementi del vettore.

n=0;
for i=1:(size(v,2))
    if abs(v(i))>n
        n=abs(v(i));
    end
end
