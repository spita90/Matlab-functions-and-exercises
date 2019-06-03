function [ M ] = inversa( A )
% Restituisce l'inversa della matrice, utilizzando l'algoritmo della
% riduzione di Gauss senza pivoting. La matrice deve essere quadrata.

n=size(A);
if n(1)~=n(2)
    M=0;
    disp('Matrice in ingresso non quadrata. Impossibile invertire');
else
    n=n(1);
    M=[A eye(n)];
    M=ridGaussNoPivot(M,0);
    
    M(n,n:size(M,2))=M(n,n:size(M,2))/M(n,n);
    for j=n:-1:2
        for i=j-1:-1:1
            M(i,:)=M(i,:)-M(j,:)*(M(i,j)/M(j,j));
        end
        n=n-1;
        M(n,n:size(M,2))=M(n,n:size(M,2))/M(n,n);
    end
    M=M(:,size(M,2)/2+1:(size(M,2)));
end

