function A = nuevo_individuo(maxnump)

%A = matriz adyacencia
%maxnump = m�ximo n�mero de puertas

nump=randi([3 maxnump]);
A=randi([0,1],nump+3,nump);
A=triu(A,-2);
end