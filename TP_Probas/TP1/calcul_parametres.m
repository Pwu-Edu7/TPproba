function [r,a,b] = calcul_parametres(X,Y)
    moyenneX = mean(X);
    varianceX = mean( (X-moyenneX).^2 );
    ecart_typeX = sqrt(varianceX);
    
    moyenneY = mean(Y);
    varianceY = mean( (Y-moyenneY).^2 );
    ecart_typeY = sqrt(varianceY);
    
    covariance = mean((X-moyenneX).*(Y-moyenneY));
    r = covariance/(ecart_typeX*ecart_typeY);
    a = covariance/(ecart_typeX.^2);
    b = moyenneY - ((covariance/ecart_typeX.^2)*moyenneX);
end

