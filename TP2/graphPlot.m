X=[-10;-8;-6;-4;-2;0;2;4;6;8;10]
Y=[3.1623;2.8284;2.4495;2;1.4142;0;1.4142;2;2.4495;2.8284;3.1623]
xmin = -10;%Borne inférieur
xmax = 10;%Borne supérieur
x=xmin:xmax;%intervalle
y=sqrt(abs(x))
%plot(x,y,'k:','linewidth',4);hold on%graphique en petit point conservé à l'écran
n=10%itérations
X= discr(xmin,xmax,n)
Y=sqrt(abs(X))
k=interpol(X,Y,x)
%plot(x,k,'b');%graphique des fonctions précdénte
legend('Fonction F(x)','Fonction interploation')%Pour nommer les axes

disp('Erreur absolue : ')
erreurAbs=max(abs(k-y))
disp('Erreur quadratique : ')
erreurQuadra = sum((k-y).^2)
a = 0
for x=0:n
    a=a+((k-y).^2)
end

%EXERCICE 2

close all

%Déclaration des bornes de l'intervalle de travail
xmin = -1;
xmax = 1;

%Création des vecteurs X2 et Y2
n = 4;
X2=discr(xmin,xmax,n);
for q=1:length(X2)
    Y2(q)=1/(1+25*(X2(q))^2)
end

%Création de X3 et Y3
n2=500
X3=discr(xmin,xmax,n2)
for s=1:length(X3)
    Y3(s)=interpol(X2,Y2,X3(s))
end

%Boum les graphiques

hold on
fplot('1/(1+25*x^2)',[-1 1])
plot(X2,Y2,'*')
plot(X3,Y3)
%plot(X,Y)
title('Comparaison de interpole et f(x)')
xlabel('X')
ylabel('Y')
legend('f(x)','valeurs discretes de X Y=F(X)','interpol')

%Et maintenant avec un nuage de point

n=500
for i=1:n
    X4(i)=((xmax-xmin)/2)*cos(((2*i+1)/(2*(n+1)))*pi)+(xmax+xmin)/2
end

for s=1:length(X4)
    Y4(s)=interpol(X2,Y2,X4(s))
end

%Boom de nouveaux graphiques avec le nuages de points
close all
hold on
fplot('1/(1+25*x^2)',[-1 1])
plot(X2,Y2,'*')
plot(X4,Y4)
title('Comparaison de interpole et f(x)')
xlabel('X')
ylabel('Y')
legend('f(x)','valeurs discretes de X Y=F(X)','interpol par le nuage de points')


