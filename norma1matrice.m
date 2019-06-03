function [ n ] = norma1matrice( M )
% Restituisce la norma 1 di una matrice, ossia il massimo tra le somme dei
% valori assoluti degli elementi di ogni colonna. 

n=0;
for j=1:size(M,2)
    tot=0;
    for i=1:size(M,1)
        tot=tot+abs(M(i,j));
    end
    if tot>n
        n=tot;
    end
end
