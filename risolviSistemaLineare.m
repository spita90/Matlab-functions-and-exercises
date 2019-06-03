function [ x ] = risolviSistemaLineare( A, b )
% Risolve il sistema lineare Ax=b effettuando prima una riduzione di Gauss
% sulla matrice e poi effettuando una backward substitution. La matrice in
% ingresso deve essere quadrata e non singolare. Il vettore soluzioni deve
% essere in colonna.

[M, v]=ridGaussNoPivot(A, b);
x=backw_subst(M, v);
end
