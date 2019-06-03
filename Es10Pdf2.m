clear
clc
n=5;

A = rand( n, n ) + n*eye( n );
b = rand( n, 1 );
x= jacobi(A, b, 50);
x2= A\b;
disp(x);