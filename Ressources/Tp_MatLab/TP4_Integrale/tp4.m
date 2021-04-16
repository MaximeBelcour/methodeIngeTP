clear all
clc

% Definition du pas et de l'interval à integrer----------------------
a=0;
b=1.2;
n=10;

%Discretisation des X-------------------------------------------------
[X,h] = Discretisation(a,b,n);


%Calcul des images des X----------------------------------------------
Y = exp(-X);


% Valeur exacte de l'intégrale (Méthode analytique)---------
fun=@(x)exp(-x);
Z=integral(fun,0,1.2)


% Méthode des rectangles (à gauche)------------------------------------

A= 0;

for i= 1 : length(X)-1
A = Y(i)*h + A;
end

A




% Méthode des Trapèzes----------------------------------------------

B = 0;

for i= 1 : length(X)-1
B = (h/2)  * (Y(i) + Y(i+1))  + B;
end

B


% Methode de Simpson--------------------------------------------------


C = 0;

for i= 1 : length(X)-1
C = C + h *(( 1/6 * Y(i)+2 / 3* (Y(i) + Y(i+1))  / 2 ) +  1/6 * Y(i+1));  
end

C

%int3 = (h/6) *  (Y(i) + 4*(Y(i+(1/2))*h) + (Y(i+1)*h)) + int3;
%ISI= ISI +  h * ( 1/6 * f(x(i))+2 / 3*f((x(i)+x(i+1)) / 2) +  1/6*f(x(i+1)) )




% Calcul des erreurs relative-------------------------------------------- 

ErrRectgl = abs(Z-A)
ErrTapz = abs(Z-B)
ErrSimp = abs(Z-C)


