
%Q2  Polynome de Lagrange : Cette fonction permet pour un x et un i donnés,
% de sortir la valeur du polynôme Li. La valeur x correspond à une valeur
% d'un point en abscisse et i 

function L = Lagrange(X,x,i)

L = 1

% Nombre de valeur de X


for j = 1 : length(X)
    %Length(X) renvoye le nombre de valeur de X
    
    % si i different de j
    if i~=j
        
        % Polynome de Lagrange
        L = L* ((x-X(j))/(X(i)-X(j)))
        
    end
    
end


