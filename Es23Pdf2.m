% Assegnato il vettore di ascisse x=[-3:1:3] ed il vettore di ordinate
% y=[-2,3,1,0,0,-1,1] costruisce e disegna il polinomio interpolante
clear
clc

x=[-3:1:3];
xint=[-3:0.1:3];
y=[-2,3,1,0,0,-1,1];
plot(x,y,'x');
hold on;
v=interpolazioneVandermonde(x,y);
v=flip(v');
for i=1:size(xint,2)
    yint(i)=sol_polin_Horner(v,xint(i));
end
plot(xint,yint);
hold off;