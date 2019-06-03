clear
clc

%%Costruisce per diagonali, utilizzando la funzione diag(), una matrice 6x6 
%le cui diagonali di indice 2*i (pari) contengano il valore i+1.
%Visualizzare il risultato come matrice di interi.

n=6;
M=eye(n);

for i=2:2:n-2
    for j=1:n-i
        v(j)=i+1;
    end
    D=diag(v,i);
    clear v;
    M=M+D;
end
for i=-2:-2:-(n-2)
    for j=1:n+i
        v(j) =abs(i)+1;
    end
    D=diag(v,i);
    clear v;
    M=M+D;
end
disp(M);
