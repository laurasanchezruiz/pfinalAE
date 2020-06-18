function recombinada=recombinarL(P1,P2)
% recombinada = matriz recombinada resultante (hijo)
% P1, P2 = padres, progenitores
prob=0.5;
filas1=length(P1(:,1));
columnas1=length(P1(1,:));
filas2=length(P2(:,1));
columnas2=length(P2(1,:));

if filas1==filas2 && columnas1==columnas2
    recombinada=zeros(filas1,columnas1);
% mi idea pa recombinar: 
    for i=1:columnas1
        random=rand(1);
        if random<prob
            %cogemos columna del primer progenitor
            recombinada(:,i)=P1(:,i);
        else
            %cogemos columna del segundo progenitor
            recombinada(:,i)=P2(:,i);
        end
    end
    
elseif filas1~=filas2 && columnas1~=columnas2
    if columnas1>columnas2 %matriz 1 mayor que matriz 2
        recombinada=zeros(filas1,columnas1); %tendrá las dimensiones de la mayor
        for i=1:columnas2
            random=rand(1);
            if random<prob
                %cogemos columna del primer progenitor
                recombinada(:,i)=P1(:,i);
            else
                %cogemos columna del segundo progenitor
                recombinada(:,i)=P2(:,i);
            end
        end
        for j=columnas2:columnas1
            recombinada(:,j+1)=P1(:,j+1);
        end
    elseif columnas1<columnas2
        recombinada=zeros(filas2,columnas2); %tendrá las dimensiones de la mayor
        for i=1:columnas1
            random=rand(1);
            if random<prob
                %cogemos columna del primer progenitor
                recombinada(:,i)=P1(:,i);
            else
                %cogemos columna del segundo progenitor
                recombinada(:,i)=P2(:,i);
            end
        end
        for j=columnas1:columnas2
            recombinada(:,j+1)=P2(:,j+1);
        end
    end
end
end