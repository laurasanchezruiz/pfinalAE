%%main
clear all
%%
ff='test_function'
% Creación población inicial
popsize=10;
mutrate=0.4; %si se supera, entonces llamo a la funcion mutarL
% - No reemplazamos a todos los individuos, sólo al 60% mejores:
selection = 0.6; % fraction of population kept
%???? Nt=npar; % continuous parameter GA Nt=#variables
%LLAMAR A FUNCIÓN SELECTION (después de crear la población (lin. 18)

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