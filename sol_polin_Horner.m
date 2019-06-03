function [ sol ] = sol_polin_Horner( f, x )
%Passato un vettore di coefficienti di un polinomio in una incognita
%di grado 'size-1' nella forma '...v(1)x^3+v(2)x^2+v(3)x+v(4)' e passata
%l'incognita, calcola il valore del polinomio in tale incognita tramite
%formulazione di Horner

n=size(f,2);

sol=f(1);
for i=2:n
    sol=(sol*x)+f(i);
end
