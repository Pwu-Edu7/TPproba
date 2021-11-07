function image_RVB = ecriture_RVB(image_originale)
    [nb_lignes, nb_colonnes] = size(image_originale);
    image_RVB = zeros(nb_lignes/2, nb_colonnes/2, 3);
    
    %assignation des matrices de couleurs
    M_Bleue = image_originale(2:2:nb_lignes, 1:2:nb_colonnes);
    M_Rouge = image_originale(1:2:nb_lignes, 2:2:nb_colonnes);
    M_Verte = (image_originale(1:2:nb_lignes, 1:2:nb_colonnes) + image_originale(2:2:nb_lignes, 2:2:nb_colonnes))/2;
    
    image_RVB(:,:,1) = M_Rouge;
    image_RVB(:,:,2) = M_Verte;
    image_RVB(:,:,3) = M_Bleue;
end

