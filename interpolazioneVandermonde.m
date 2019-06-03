function [ f ] = interpolazioneVandermonde( x, y )
% Prende in ingresso vettori di ascisse e ordinate di punti e restituisce
% il polinomio intrerpolante secondo Vandermonde.

n=size(x,2);
m=size(y,2);
if m~=n
    disp('I vettori non hanno la stessa lunghezza!');
    f=0;
else
    M=matrice_Vandermonde(x);
    f=risolviSistemaLineare(M,y');
end

