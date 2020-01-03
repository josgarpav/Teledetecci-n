function expan = expan(imagen, corteMin, corteMax)
    imag = imagen;
    [filas, columnas] = size(imag);
    %disp ([filas, columnas]); %tamaño de la imagen
    for i = 1:filas
        for j = 1:columnas
            pixel = imagen(i,j);
            pix = imag(i,j);
            if (pixel <= corteMin)
                pix = 1;
            elseif (pixel >=corteMax)
                pix = 255;
            else
                pix = 0 + (double(pixel - corteMin)/double(corteMax - corteMin)) * (255 - 0);
            end
            imag(i,j) = pix;
        end
    end
    expan = imshow(imag);