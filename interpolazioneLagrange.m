function [ f, l ] = interpolazioneLagrange( x, y)
% Prende in ingresso vettori di ascisse e ordinate di punti e restituisce
% il polinomio intrerpolante secondo Lagrange e il vettore basi di Lagrange

n=size(x,2);
m=size(y,2);
if m~=n
    disp('I vettori non hanno la stessa lunghezza!');
    f=0;
else
    for i= 1:n
        num=1;
        for j= 1:n
            if j~= i
                pol(1)=1;
                pol(2)=-x(j);
                num=conv(num,pol);
            end
        end
        den=1;
        for j= 1:n
            if j~= i
                pol=x(i)-x(j);
                den=den*pol;
            end
        end
        l(i,:)=num/den;
    end
    f=zeros(1,n);
    for i= 1:n
        f=f+(l(i,:).*y(i));
    end
end

