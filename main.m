%%main
clear all
%%
ff='test_function'
% Creaci�n poblaci�n inicial
popsize=10;
mutrate=0.4; %si se supera, entonces llamo a la funcion mutarL
% - No reemplazamos a todos los individuos, s�lo al 60% mejores:
selection = 0.6; % fraction of population kept
%???? Nt=npar; % continuous parameter GA Nt=#variables
%LLAMAR A FUNCI�N SELECTION (despu�s de crear la poblaci�n (lin. 18)

 % #population memberst that survive

num_puertas=6;
poblacion=[]
for i=1:popsize
    poblacion{i}=nuevo_individuo(num_puertas)
end


iteraciones=200;
for i=1:iteraciones
    %blablabla
end