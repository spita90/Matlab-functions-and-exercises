function [ P ] = prodotto_matrici( M,N )
% Date due matrici in ingresso ne calcola, se possibile, il prodotto
% altrimenti visualizza un messaggio di errore adeguato.

dimM=size(M);
dimN=size(N);

if (dimM(2)==dimN(1))
    for i=1:dimM(1)
        for k=1:dimN(2)
            P(i,k)=0;
            for j=1:dimM(2)
                P(i,k)=P(i,k)+(M(i,j)*N(j,k));
            end
        end
    end
else
    disp('Dimensioni non compatibili');
end
