function [ M ] = matrice_Vandermonde(x)
% Dato un vettore delle ascisse restituisce la matrice di Vandermonde associata

n=size(x,2);
for i=1:n
    M(i,1)=1;
    for j=2:n
        M(i,j)=x(i)^(j-1);
    end
end

