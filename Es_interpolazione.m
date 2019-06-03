clear
clc

x=[0:5];
xapp=[0:0.1:5];
y=[0 10 -20 150 -200 200];
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