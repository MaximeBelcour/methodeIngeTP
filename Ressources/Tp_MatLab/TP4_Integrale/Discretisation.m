
%Q4  Discretisation dans l'interval [a,b] et n le nombre de sous-intervalles

function [Xi,h] = Discretisation(a,b,n)




h = (b-a)/n;   % definition du pas h

 

for i = 1 : n   % Pour n1 allant de 0 au nombre de sous-intervalles
    
    Xi(i) = a+h*i ;    %  Depuis le debut de l'intervalle ajouter le pas n fois    
    
end 


end



