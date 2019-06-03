function [ z ] = bisezione( I, f, toll, itermax)
% Restituisce lo zero della funzione, calcolato tramite il metodo della
% bisezione, nell'intervallo. La funzione f in ingresso deve essere
% continua nell'intervallo, e l'immagine agli estremi deve avere segno
% opposto. Come criteri d'arresto si usano una tolleranza e un numero
% massimo di iterazioni.

a=I(1);
b=I(2);
iter=0;
fa=sol_polin_Horner(f,a);

while abs(b-a)>toll && iter<itermax
    iter=iter+1;
    c=(a+b)/2;
    fc=sol_polin_Horner(f,c);
    if (fc*fa)>0
        a=c;
        fa=fc;
    else
        b=c;
    end
end
z=c;
end