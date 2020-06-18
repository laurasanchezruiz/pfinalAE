function poblacion_seleccionada = seleccionarL(poblacion,keep)
%le pasamos por par�metro la poblaci�n, que ser� un diccionario con
%todos los individuos. Calculamos la fitness de cada individuo y la metemos
%en un vector. Ordenamos este vector de mayor a menor fitness y en este
%mismo orden ordenamos a los individuos para crear otro vector ya ordenado
%(el primer individuo de poblacion_seleccionada tendr� la mayor fitness y
%el �ltimo la peor. Nos quedaremos con los "keep" primeros:

%keep es el n�mero de individuos con el que nos quedamos. Est� definido en
%el main y viene dado por el par�metro selection y el tama�o de la
%poblaci�n (n�m. de individuos)

vector_fitnesses=[];
for i=1:length(poblacion)
    individuo=poblacion{i};
    fitness=test_function(individuo);
    vector_fitnesses(i)=fitness; 
end

vector_fitnesses_ord=sort(vector_fitnesses); %ordenamos de menor a mayor
vector_fitnesses_ord=vector_fitnesses_ord(1:keep);

poblacion_seleccionada={};
for i=1:length(vector_fitnesses_ord)
    for j=1:length(poblacion)
        individuo=poblacion{j};
        fitness=test_function(individuo);
        if vector_fitnesses_ord(i)==fitness
            poblacion_seleccionada{i}=individuo;
        end
    end
end

end