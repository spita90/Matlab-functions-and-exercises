clear
clc

A=[5 -2 3 0 3 -1;4 5 -4 0 8 81;7 0 -9 7 71 -8;8 88 -89 8 8 8;0 1 2 3 -4 -55;1 185 1 -1 -186 0];
b=[0;5;7;4;6;6];

x=risolviSistemaLineare(A, b);
disp(x);