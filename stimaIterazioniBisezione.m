function [ n ] = stimaIterazioniBisezione( I, toll )
% Stima il numero minimo di iterazioni del metodo di bisezione che bisogna
%effettuare per avere un errore sul risultato minore della tolleranza.

n=log2((I(2)-I(1))/toll);

end

