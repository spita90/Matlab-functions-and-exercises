clear
clc

A1=[1 -1;1 -1.00001];
b1=[1;0];
x1=risolviSistemaLineare(A1,b1);
disp('Sol. sistema originario:');
disp(x1);

A2=[1 -1;1 -0.99999];
b2=[1;0];
x2=risolviSistemaLineare(A2,b2);
disp('Sol. sistema perturbato:');
disp(x2);

errAssDati=norm((A1-A2),inf);
disp('Errore assoluto sui dati:');
disp(errAssDati);

errRelDati=(norm((A1-A2),inf)/norm(A1,inf));
disp('Errore relativo sui dati:');
disp(errRelDati);

errAssRisultati=norm((x1-x2),inf);
disp('Errore assoluto sui risultati:');
disp(errAssRisultati);

errRelRisultati=(norm((x1-x2),inf)/norm(x1,inf));
disp('Errore relativo sui risultati:');
disp(errRelRisultati);

condiz=errRelRisultati/errRelDati;
disp('Condizionamento Spit:');
disp(condiz);
disp('Condizionamento Matlab:');
disp(cond(A1));
disp('K(A):');
disp(norm(A1)*norm(inv(A1)));
