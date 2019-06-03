function [ z ] = tangentiNewtonStazionario( I, f, toll, itermax)
% Metodo delle tangenti di Newton (variante con denominatore stazionario)

x0=I(1);
iter=1;
derFx0=sol_polin_Horner(derivataPolinomio(f),x0);
while iter<itermax
    x1=x0-(sol_polin_Horner(f,x0)/derFx0);
    if abs(sol_polin_Horner(f,x1))<toll
        break;
    else
        x0=x1;
        iter=iter+1;
    end
end

z=x1;