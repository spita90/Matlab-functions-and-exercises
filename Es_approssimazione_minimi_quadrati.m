clear
clc

x=[-3:1:3];
y=[-2,3,1,0,0,-11,10];
plot(x,y);
hold on;
v=approssimazioneMinimiQuadrati(x,y);
v=flip(v');
for i=1:size(x,2)
    yapp(i)=sol_polin_Horner(v,x(i));
end
plot(x,yapp);
hold off;