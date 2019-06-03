function [ m ] = mediaAritmetica( v )
% Restituisce la media aritmetica di un vettore, ossia la somma di tutti i
% suoi elementi, fratto il numero di elementi.

sum=0;
for i=1:size(v,2)
    sum=sum+v(i);
end
m=sum/size(v,2);
