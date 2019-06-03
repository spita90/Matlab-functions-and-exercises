function [ x ] = gauss_seidel( A, b, iter)
% Costruisce il vettore soluzioni facendo convergere iterativamente tramite
% metodo di Gauss-Seidel ossia  x(di k+1) = −(D+L)^(-1)Ux(di k) + (D+L)^(−1)b

n=size(A);
if n(1)~=n(2)
    disp('Matrice non quadrata! Impossibile continuare.');
else
    DL=diag(diag(A))+tril(A,-1);
    n=n(1);
    
    D = DL\b;                      %costruzione del secondo addendo formula
    M = -DL\triu(A,1);             %costruzione del primo addendo formula
    xk=zeros(n,1);              %vettore soluzioni inziale
    for k=1:iter                %ciclo di iterazioni del metodo
        xkp1=M*xk+D;
        errore = xkp1-xk;       %differenza tra due successive soluzioni
        eps=norm(errore,inf);   %norma infinito (massimo) del vettore differenza
        if eps<0.00001          %controllo dell'errore
            break               %esco dal ciclo e dalla routine
        end
        xk=xkp1;                %aggiornamento dei vettori soluzione
    end
end
x=xkp1;
end

