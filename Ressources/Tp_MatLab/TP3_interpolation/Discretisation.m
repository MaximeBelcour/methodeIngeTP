
%Q4  Discretisation dans l'interval [a,b] et n le nombre de sous-intervalles

function Discr = Discretisation(a,b,n)

h = (b-a)/n   % definition du pas h

for n1 = 0 : n   % Pour n1 allant de 0 au nombre de sous-intervalles
    
    Discr(n1+1) = a+h*n1     %  Depuis le debut de l'intervalle ajouter le pas n fois    
    
end    