function [ f ] = interpolazioneNewton( x, y)
% Prende in ingresso vettori di ascisse e ordinate di punti e restituisce
% il polinomio intrerpolante secondo Newton
n=size(x,2);
m=size(y,2);
if m~=n
    disp('I vettori non hanno la stessa lunghezza!');
    f=0;
else
    bn(1,n)=1;
    for i=2:n
        pol(1)=1;
        pol(2)=-x(i-1);
        base=bn(i-1,2:end);
        bn(i,:)=conv(base,pol);
    end
    DD = zeros(n,n);
    DD(:,1) = y(:);
    for j=2:n
        for i=j:n
            DD(i,j) = (DD(i,j-1)-DD(i-1,j-1))/(x(i)-x(i-j+1));
        end
    end
    f=zeros(1,n);
    for i=1:n
        f=f+(DD(i,i)*bn(i,:));
    end
end

