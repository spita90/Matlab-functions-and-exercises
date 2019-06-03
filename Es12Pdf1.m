% Calcolo la norma infinito di una matrice e della sua prima colonna
% utilizzando la funzione norm().

clear
clc

M=rand(6);

disp('Norma infinito matrice:\n');
disp(norm(M,inf));

disp('Norma infinito prima colonna:\n');
disp(norm(M(:,1),inf));