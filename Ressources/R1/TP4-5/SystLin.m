clear all
clc

% Initialisation
A = [2,4,-4,1;3,6,1,-2;-1,1,2,3;1,1,-4,1]
B = [0;-7;4;2]
n = length(A)
L = eye(n) % matrice identité de la même taille que A
E = 0.000001

for i = 1 : n
P (1,i) = [i]
end
P= P' %transposée de P
Z=A
% Pivot maximal et test si différent de 0
for k = 1 : n-1 % boucle principale qui permet de se déplacer sur les colonnes de A
    % On cherche la valeur max dans A a partir de k,k 
    m = abs(A(k,k)) 
    for w = k : n
        if abs(A(w,k))>= m
            m = abs(A(w,k)) % on compare avec la valeur du dessus de la matrice
            l = w % l prend la valeur w de la ligne actuelle si la valeur dans A était supérieure
        end
    end
    if m<E
        print('erreur')
    else
        % permutation de A, L et P
      a = A(k,:)
      A(k,:) = A(l,:)
      A(l,:) = a
      
      p = P(k,:)
      P(k,:) = P(l,:)
      P(l,:) = p
      
      L2 = L(k,:)
      L(k,:) = L(l,:)
      L(l,:) = L2
     % Calcul de L et de U
      for i = k+1 : n
          L(i,k) = A(i,k)/A(k,k)
          for j = k : n
             A(i,j) = A(i,j) - (L(i,k)*A(k,j)) 
              
          end
      end      
      
    end                
    
end
if abs(A(n,n))< E
    print('erreur')
end
Y = B(P,:)
X = inv(A)*inv(L)*B