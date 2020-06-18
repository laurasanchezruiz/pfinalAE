function hijo_m=mutarL(hijo)

%1-Cambiar n�mero de puertas (a�adir o eliminar). Num puertas = num columnas

prob_mut1=rand(1); %%%%%%%%%%%%%%????
columnas=length(hijo(1,:)); %num de puertas
if prob_mut1<=(1/columnas^2)
    if prob_mut1<0.5 %a�adir puerta
        nueva_puerta=randi([0,1],P+3,1);
        hijo_m=[hijo,nueva_puerta]; %hijo mutado con la puerta a�adida
        
    else %eliminar puerta
        col=randi(columnas);
        hijo(:,col)=[]; %columna (puerta) eliminada
    end
    

%2-Conexiones (a�adir o eliminar)
conex=numel(find(hijo));
prob_mut2=1/conex; %%%%%%%%%%%%%%%%%%????

%a�adir/eliminar conexiones

end