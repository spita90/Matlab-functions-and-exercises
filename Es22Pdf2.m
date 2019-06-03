% Assegnato il vettore di ascisse x= [-n:1:n] studia il condizionamento
% della matrice di Vandermonde al variare di n=10,20,30,40,50
clear
clc
v=[10 20 30 40 50];
disp('Il condizionamento della matrice di Vandermonde è (ai vari n):');

for i=1:size(v,2)
    n=v(i);
    x=-n:n;
    M=matrice_Vandermonde(x);
    disp('Per n = ');
    disp(n);
    disp(cond(M));
end
    