clear
clc

em=1;
a=1+em;
while(a>1)
    em=em*2^(-1);
    a=1+em;
end
em=2*em;
disp(em);
if(em==eps)
    disp("Ottimo!");
end
