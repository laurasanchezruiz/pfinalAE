function A = nuevo_individuo(nump)

%A = matriz adyacencia

%nump = n�mero de puertas

A=randi([0,1],nump+3,nump);
A=triu(A,-2);



%P = n�mero de puertas
%maxp = m�ximo n�mero de puertas

% P=randi(maxp); %generamos un n�mero random de puertas
% A=randi([0,1],P+3,P);%creamos la matriz de adyacencia con valores de 0 y 1
% A=triu(A,-2); %imponemos la condici�n del triangulo inferior izquierdo de 0



% Creo que est� mal:
% %Asegurarnos que solo hay dos entradas a cada elemento
% A=unos(A,P);%%%unos
end