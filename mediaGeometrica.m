function [ m ] = mediaGeometrica( v )
% Restituisce la media geometrica di un vettore, ossia la radice
% n-esima del prodotto degli n elementi, con n = numero di elementi
% del vettore.

prod=1;
n=size(v,2);
for i=1:n
    prod=prod*v(i);
end
m=nthroot(prod,n);
