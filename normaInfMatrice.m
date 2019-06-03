function [ n ] = normaInfMatrice( M )
% Restituisce la norma infinito di una matrice, ossia il massimo tra le
% somme dei valori assoluti degli elementi di ogni riga. 

n=0;
for i=1:size(M,1)
    tot=0;
    for j=1:size(M,2)
        tot=tot+abs(M(i,j));
    end
    if tot>n
        n=tot;
    end
end
