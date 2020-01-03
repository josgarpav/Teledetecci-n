function histo = histo(imagen)
    [f,c] = size(imagen);
    x = 1:1:255;
    y = (zeros(1,255));
    valor = 1;
    cont = 0;
    while (valor <= 255)
        cont = 0;
        for i = 1:f
            for j = 1:c
                if I(i,j) == valor
                    cont = cont+1;
                end
            end
        end
        y(1,valor) = cont;
        valor = valor + 1;
    end
    histo = bar(y);