function recombinada=recombinarL(P1,P2)
% recombinada = matriz recombinada resultante (hijo)
% P1, P2 = padres, progenitores
prob=0.5;
filas=length(P1(:,1));
columnas=length(P1(1,:));
recombinada=zeros(filas,columnas);
% mi idea pa recombinar: 
for i=1:columnas
    random=rand(1);
    if random>prob
        %cogemos columna del primer progenitor
        recombinada(:,i)=P1(:,i);
    else
        %cogemos columna del segundo progenitor
        recombinada(:,i)=P2(:,i);
    end
end