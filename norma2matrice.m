function [ n ] = norma2matrice( M )
% Restituisce la norma 2 di una matrice, ossia la radice quadrata del
% raggio spettrale (massimo degli autovalori in modulo) della matrice
% moltiplicata per la sua trasposta.

ragg_spettr=0;
autov=eig(M'*M);
for i=1:size(autov,1)
    if abs(autov(i))>ragg_spettr
        ragg_spettr=abs(autov(i));
    end
end
n=sqrt(ragg_spettr);