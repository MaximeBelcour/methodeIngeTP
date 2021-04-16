
%Q1 : Initialisation des vecteurs dans des matrices 
X = [-10,-8,-6,-4,-2,0,2,4,6,8,10];
Y = [3.1623,2.8284,2.4495,2.0000,1.4142,0,1.4142,2.0000,2.4495,2.8284,3.1623];


% Apr�s avoir rentr� la fonction Lagrange, on la teste. Pour fonctionner,
% Lagrange a besoin d'une valeur pour i et x.

i=1;
x=2 ;
L = Lagrange(X,x,i);

% Apr�s avoir rentr� la fonction Interpol, on la teste. Pour fonctionner,
% Interpol a besoin d'une valeur pour x.

x=2;
Z = Interpol(X,Y,x);

% Apr�s avoir rentr� la fonction Discr�tisation, on la teste. Pour
% fonctionner, Discr�tisation a besoin d'une valeur pour n. On d�finit nos
% bornes par -10 et 10.

n=200 ; 
a=-10 ;
b=10 ;

Discr = Discretisation(a,b,n) ;  % les valeurs de x 

% On cherche � d�f�nir un tableau pour les valeurs th�oriques de Y en fonction des x.

for k=1:n+1 
    Yth(k)=Interpol(X,Y,Discr(k))
end


% Q5 : Graphique Interpol et Racine de x sur [-10;10]

hold on
%fplot('sqrt(abs(x))',[-10 10]) % Racine de x
fplot(@(x)sqrt(abs(x)))

hold on
plot(Discr,Yth)  % Courbe interpol  

hold on
plot(X,Y,'*')   % Abscisse et ordon�ee
axis equal

title('Comparaison de interpol et racine de valeur absolu de x') % titre


% Titre des axes 
xlabel('X')
ylabel('Y')
legend('racine(absolu(x))','interpol','nuage de points')


