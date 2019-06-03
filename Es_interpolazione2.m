clear
clc

x=[-2:0];
xapp=[-2:0.1:0];
y=[0 1 0];
plot(x,y);
hold on;
plot(x,y,'x');
v=interpolazioneVandermonde(x,y);
v=flip(v');
for i=1:size(xapp,2)
    yapp(i)=sol_polin_Horner(v,xapp(i));
end
plot(xapp,yapp);
hold off;