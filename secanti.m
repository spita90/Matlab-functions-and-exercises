function [ z ] = secanti( I, f, toll, itermax)
% Metodo delle secanti

x0=I(1);
x1=I(2);    
iter=1;
while iter<itermax
    fx1=sol_polin_Horner(f,x1);
    fx0=sol_polin_Horner(f,x0);
    x2=x1-(fx1*(x1-x0))/(fx1-fx0);
    if abs(x2-x1)<toll
        break;
    else
       iter=iter+1;
       x0=x1;
       x1=x2;
    end
end
z=x2;