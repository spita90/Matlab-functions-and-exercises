function [ f ] = approssimazioneMinimiQuadrati( x, y )
% Prende in ingresso vettori di ascisse e ordinate di punti e restituisce
% il polinomio della retta di migliore approssimazione ai minimi quadrati.

n=size(x,2);
m=size(y,2);
if m~=n
    disp('I vettori non hanno la stessa lunghezza!');
    f=0;
else
    sommaxi=sum(x);
    sommaxi2=sum(x.^2);
    M=[(n-1) sommaxi;sommaxi sommaxi2];
    
    sommayi=sum(y);
    sommayixi=sum(y.*x);
    v=[sommayi;sommayixi];
    
    f=risolviSistemaLineare(M,v);
end

