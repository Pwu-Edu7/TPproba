function [C_x,C_y,M] = matrice_inertie(E_i,E_j,G_norme_E);
    somme_pi = sum(G_norme_E);
    C_x = (1/somme_pi)*(G_norme_E'*E_i);
    C_y = (1/somme_pi)*(G_norme_E'*E_j);
    M = zeros(2,2);
    M(1,1) = (1/somme_pi)*G_norme_E'*(E_i - C_x).^2;
    M(2,2) = (1/somme_pi)*G_norme_E'*(E_j - C_y).^2;
    M(1,2) = (1/somme_pi)*G_norme_E'* ((E_i - C_x).*(E_j - C_y));
    M(2,1) = M(1,2);
end