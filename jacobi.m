function [ x ] = jacobi( A, b, iter)
% Costruisce il vettore soluzioni facendo convergere iterativamente tramite
% metodo di Jacobi ossia  x(di k+1) = -D^(-1)(L+U)x(di k) + D^(-1)b

n=size(A);
if n(1)~=n(2)
    disp('Matrice non quadrata! Impossibile continuare.');
else
    n=n(1);
    
    D = diag(diag(A))\b';                      %costruzione del secondo addendo formula
    M= -diag(diag(A))\(triu(A,1)+tril(A,-1));  %costruzione del primo addendo formula

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

