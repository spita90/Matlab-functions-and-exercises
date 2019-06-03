%Estrarre da una matrice di Hilbert 100x100 (costruita con la function
%Matlab) una sottomatrice costituita dagli elementi aventi indici di riga
%multipli di 3 e indici di colonna multipli di 4.
%Visualizzare il risultato come matrice di razionali.

clear
clc

format rat;
r=[3:3:100];
c=[4:4:100];
H=hilb(100);
M=(H(r,c));
disp(M);