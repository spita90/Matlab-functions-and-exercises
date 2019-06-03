% Costruisce la matrice nxn diagonale rovesciata, i cui valori sono uguali
% ad un vettore v di dimensione n=10.

clear
clc

n=10;
v=(1:n);
m=zeros(n);

for i=0:n-1
    m(i+1,n-i)=v(i+1);
end
