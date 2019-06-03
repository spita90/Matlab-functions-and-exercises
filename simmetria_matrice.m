function [ s ] = simmetria_matrice( M )

% Prende una matrice e restituisce 1 se tale matrice è simmetrica,
% altrimenti 0 se non lo è.

dim=size(M);

if dim(1)==dim(2)
    for i=1:(dim(1)-1)
        for j=i+1:dim(2)
            if M(i,j)~=M(j,i)
                s=0;
                disp('La matrice non è simmetrica');
                return;
            end
        end
    end
    s=1;
    disp('La matrice è simmetrica');
else
    s=0;
    disp('La matrice non è simmetrica');
end



