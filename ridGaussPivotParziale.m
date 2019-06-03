function [ M, v ] = ridGaussPivotParziale( A, b )
% Restituisce, ove possibile, la matrice ridotta secondo il metodo di Gauss
% ossia una matrice triangolare superiore che ai fini del sistema lineare
% è perfettamente equivalente all'originale, ma con questa ridotta sarà
% molto più facile trovare le soluzioni del sistema, potrai operare infatti
% tramite backward substitution. Questo tipo in particolare utilizza la
% tecnica del pivoting parziale, ossia, ai fini di tenere sotto controllo
% gli errori sulle operazioni può operare scambi di righe.

I=size(A,1);
J=size(A,2);

M=A;
v=b;

for k=1:I-1
    absMax = abs(M(k,k));
    rawOfMax = k;
    for i=k+1:I
        if abs(M(i,k)) > absMax
            absMax = abs(M(i,k));
            rawOfMax = i;
        end
    end
    
    if absMax ~= 0
        if rawOfMax ~= k
            for j=k:J
                tmpSwap = M(k,j);
                M(k,j) = M(rawOfMax,j);
                M(rawOfMax,j) = tmpSwap;
            end
            if ~(size(v,1)==1 && v(1)==0)
                tmpSwap=v(k);
                v(k)=v(rawOfMax);
                v(rawOfMax)=tmpSwap;
            end
        end
        
        for i=k+1:I
            gaussMolt = M (i,k) / M(k,k);
            if gaussMolt ~= 0
                M(i,k) = 0;
                for j=k+1:J
                    M(i,j) = M(i,j) - gaussMolt * M(k,j);
                end
                if ~(size(v,1)==1 && v(1)==0)
                    v(i,1) = v(i,1) - gaussMolt * v(k,1);
                end
            end
        end
    else
        disp('Impossibile ridurre con questo algoritmo. Ho trovato zero sulla diagonale durante lo svolgimento!');
    end
end
