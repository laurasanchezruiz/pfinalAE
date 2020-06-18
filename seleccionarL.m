function [poblacion_seleccionada]=seleccionar(poblacion,selection)
%le pasamos por parámetro la población, que será un vector o lo que sea con
%todos los individuos. Calculamos la fitness de cada individuo y la metemos
%en un vector. Ordenamos este vector de mayor a menor fitness y en este
%mismo orden ordenamos a los individuos para crear otro vector ya ordenado
%(el primer individuo de poblacion_seleccionada tendrá la mayor fitness y
%el último la peor. Nos quedaremos con los "keep" primeros:
keep=floor(selection*popsize); %es el número de individuos con el que nos
    %quedamos
end