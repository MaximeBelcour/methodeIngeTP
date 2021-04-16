Epsilon = [0.248818,0.378909,0.704909,1.55291,2.60227,3.62727,4.62536,5.632,6.68036,7.71791,8.711,9.75936,10.8566,11.9798,13.0114,14.1584,15.3273,16.5355,17.7166,18.9329,20.1883,21.5147,22.883,24.3088];
Sigma = [118.145,123.404,130.836,143.737,157.003,168.125,177.202,184.978,191.685,197.264,201.735,205.737,209.274,212.308,214.561,216.758,218.529,219.98,221.172,222.094,222.851,223.448,223.749,223.867];

%On cherche K et n  tels que Sigma=K*Epsilon^(n)

lneps=log(Epsilon); % on créé un tableau lneps qui correspond au tableau des ln(epsilon)
lnsig=log(Sigma); % On fait pareil pour le tableau sigma

Taille =size(Epsilon); % On recherche m qui correpond au nombre de valeurs dans le tableau epsilon
                       % Dans notre cas, Taille prend la valeur(1,24)
m=Taille(2); % m prend la valeur 24

Slneps=sum(lneps); % on somme les valeurs du tableau lneps

Slnepsc=sum(lneps.*lneps); % on somme les carrés des valeurs de lneps

Slnsig=sum(lnsig); % on somme les valeurs du tableau lnsig
Slnsigeps=sum(lneps.*lnsig); % on somme les produits eps x sig

A=[m,Slneps;Slneps,Slnepsc]; % La matrice A définie selon la formule du cours
B=[Slnsig;Slnsigeps]; % La matrice B définie selon la formule du cours
S=inv(A)*B; % AS=B => S=A^(-1)B     avec S[R1,R2]  R1=ln(K) et R2=n

R1=exp(S(1)); %R1 prend la valeur de exp(ln(K))=K
R2=S(2); %R2 prend la valeur n

plot(Epsilon,Sigma,Epsilon,R1*(Epsilon.^R2)); % Nous affichons sur le même graphique le nuage de points que nous avions au départ
                                              % et la courbe linéarisé correspondant à la fonction Sigma=K*Epsilon^(n)

erreur=max(abs(Sigma-(R1*(Epsilon.^R2)))); % L'erreur maximale par rapport aux mesures coorrespond à la plus grande valeur
                                           % de la valeur absolu de la différence d'ordonnées entre les deux courbes
