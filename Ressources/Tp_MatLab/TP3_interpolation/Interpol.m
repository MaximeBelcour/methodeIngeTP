
% Q3 Fonction Interpol :  On exécute pour un x donné, la fonction
% d'interpolation de Lagrange en fonction des Li, X et Y connues.

function Z = Interpol(X,Y,x)

Z = 0

for k=1 : length(X)
    %Length(X) renvoye le nombre de valeur de X
    
    Z = Lagrange(X,x,k)*Y(k)+Z
    
end


