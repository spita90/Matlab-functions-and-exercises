function [ d ] = derivataPolinomio( f )
% Restituisce la derivata del polinomio
n=size(f,2);
for i=1:n-1
    d(i)=f(i)*(n-i);
end
