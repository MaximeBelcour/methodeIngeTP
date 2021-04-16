clear all
clc

%variables
a = 0
b = 1.2

%fonction analytique
I = -exp(-b)+exp(-a)

k=0 %initialisation de k pour incr�mentation de la position dans la matrice
result= [10 ,15, 20] % Cr�ation de la matrice avec les valeurs 10, 15 et 20

for N= [10,15,20]
    
h = (b-a)/N

%methode rectangle (� gauche)
I1 = 0
for i = 0 : (N-1) % on choisit de 0 � n-1 pour �tre � gauche et non � droite
   I1 = I1 + exp(-(a+(i*h))) % it�ration de somme de la formule
end

I1 = I1*h % multiplication par h de la somme obtenue

E1 = abs(I-I1)/I % Calcul de l'erreur relative

%methode trapeze
I2 = 0
for j = 0 : (N-1) % dans m�thode des trap�zes, on commence toujours "� gauche" au z�ro
    I2 = I2 + exp(-(a+((j+1)*h))) % it�ation de somme de la formule
end

I2 = I2*h + (h/2)*(exp(-a)-exp(-b))

E2 = abs(I-I2)/I % Calcul de l'erreur relative

%methode Simpson
I3 = 0
for i=0 : (N-1)
    I3 = I3 + (h/6)*(exp(-(a+(i*h)))+4*exp(-(a+(i+(1/2))*h))+exp(-(a+((i+1)*h))))
end

E3= abs(I-I3)/I % Calcul de l'erreur relative

result(2:4,k+1)= [E1; E2; E3] % Remplissage matrice avec les valeurs de I1,I2 et I3 pour chaque N
k=k+1

end

%Evolution de l'erreur pour m�thode rectangles � gauche
hold on
plot(result(1,:),result(2,:))
hold on

%Evolution de l'erreur pour m�thode des trap�zes
hold on
plot(result(1,:),result(3,:))
hold on

%Evolution de l'erreur pour m�thode Simpson
hold on
plot(result(1,:),result(4,:))
hold on