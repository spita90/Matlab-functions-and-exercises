function [ z ] = tangentiNewton( I, f, toll, itermax)
% Metodo delle tangenti di Newton

x0=I(1);
iter=1;
derF=derivataPolinomio(f);
while iter<itermax
    x1=x0-(sol_polin_Horner(f,x0)/sol_polin_Horner(derF,x0));
    if abs(sol_polin_Horner(f,x1))<toll
        break;
    else
        x0=x1;
        iter=iter+1;
    end
end

z=x1;