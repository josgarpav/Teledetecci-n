function corte = corte(path, porcentaje)

    matrixPixeles = imread(path);
    
    [filas, columnas]= size(matrixPixeles);
    %Total de pixeles
    totalPixeles = filas*columnas;
    %Calcular la frecuencia
    vector = zeros(1,255);
    %Vamos a quitar los extremos
    condicionParada = porcentaje*totalPixeles;
    
    for c=1:filas
        for j=1:columnas
            nd= matrixPixeles(c,j);
            if(nd >=1 && nd <=255)
                vector(nd)= vector(nd)+1;
            end
        end 
    end
    %Calculando el corte minimo
    sumaAcumulada=0;
    for k=1:255
        sumaAcumulada = sumaAcumulada + vector(k);
        if(sumaAcumulada > condicionParada)
            ndCorteMin = k-1;
            break  
        end
    end
    %Calculando el corte minimo
    sumaAcumulada=0;
    for l=255:1
        sumaAcumulada = sumaAcumulada + vector(k);
        if(sumaAcumulada > condicionParada)
            ndCorteMax = k+1;
            break  
        end
    end
    expan(imagen, ndCorteMin, ndCorteMax)            
end
