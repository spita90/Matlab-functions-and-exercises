% Assegnato il vettore di ascisse x=[-3:1:3] ed il vettore di ordinate
% y=[-2,3,1,0,0,-1,1] costruisce e disegna il polinomio interpolante
clear
clc

x=[-3:1:3];
xapp=[-3:0.1:3];
y=[-2,3,1,0,0,-1,1];
plot(x,y,'x');
hold on;
v=interpolazioneLagrange(x,y);
for i=1:size(xapp,2)
    yapp(i)=sol_polin_Horner(v,xapp(i));
end
plot(xapp,yapp);
hold off;