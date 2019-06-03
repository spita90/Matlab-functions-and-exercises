clear
clc

n=20;
v(:,1:n)=-3;
w(:,1:n-1)=-1;
M=diag(v);
M=M+diag(w,1);
M=M+diag(w,-1);

b(:,1:n)=1;

x=risolviSistemaLineare(M,b');

x2=jacobi(M,b',10);

e=max(abs(x-x2));