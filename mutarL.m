function hijo_m=mutarL(hijo)

%1-Cambiar n�mero de puertas (a�adir o eliminar). Num puertas = num columnas
prob_mut1=rand(1);
columnas=length(hijo(1,:)); %num de puertas
filas=length(hijo(:,1)); %columnas+3
if prob_mut1<0.5 %a�adir puerta
    nueva_puerta=randi([0,1],columnas+3,1);
    hijo_m=[hijo,nueva_puerta]; %hijo mutado con columna a�adida
    hijo_m(filas,:)=randi([0,1],1,columnas+1);%a�adir abajo una fila nueva
    hijo_m=triu(hijo_m,-2);
    
else %eliminar puerta
    col=randi(columnas);
    hijo(:,col)=[]; %columna (puerta) eliminada
    hijo_m=hijo;
    hijo_m(col,:)=[]; %eliminar la fila correspondiente a la puerta que hemos eliminado
    hijo_m=triu(hijo_m,-2);
end
    

%2-Conexiones (a�adir o eliminar)
conex=numel(find(hijo)); %n�mero de conexiones
prob_mut2=1-prob_mut1;


%a�adir/eliminar conexiones

end