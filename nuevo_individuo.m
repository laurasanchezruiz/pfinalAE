function A = nuevo_individuo(nump)

%A = matriz adyacencia

%nump = número de puertas

A=randi([0,1],nump+3,nump);
A=triu(A,-2);



%P = número de puertas
%maxp = máximo número de puertas

% P=randi(maxp); %generamos un número random de puertas
% A=randi([0,1],P+3,P);%creamos la matriz de adyacencia con valores de 0 y 1
% A=triu(A,-2); %imponemos la condición del triangulo inferior izquierdo de 0



% Creo que está mal:
% %Asegurarnos que solo hay dos entradas a cada elemento
% A=unos(A,P);%%%unos
end