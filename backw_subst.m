function [ x ] = backw_subst( A,b )
% Backward Substitution
% Risoluzione di sistemi lineari tramite backward substitution. Ciò
% implica che la matrice A in ingresso debba obbligatoriamente essere
% triangolare superiore e quadrata(ad esempio si può applicare dopo aver ridotto
% una qualsiasi matrice quadrata col metodo di Gauss), e non singolare.
% Il vettore soluzioni deve essere in colonna.
n=size(A);

if n(1)~= n(2)
    disp('Matrice non quadrata');
    x=0;
elseif size(b,1)~=n(2)
    disp('Dimensioni vettore soluzione non adeguato');
    x=0;
else
    n=n(1);
    if A(n,n)~=0
        x(n,1)=b(n,1)/A(n,n);
        for i=n-1:-1:1
            s=0;
            for j=i+1:n
                s=s+(A(i,j)*x(j,1));
            end
            x(i,1)=(b(i,1)-s)/A(i,i);
        end
    else
        disp('Trovati zero sulla diagonale. Impossibile risolvere.');
        x=0;
    end
end
