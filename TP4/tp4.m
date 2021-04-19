clear all 
clc


%calculer l'intégrale analytiquement---------
fun=@(x)exp(-x);
q=integral(fun,0,1.2)

%définir l'intervalle------------------------
n=10
a=0
b=1.2

[X,h] = discr_integrale(a,b,n)
Y=exp(-X)

%Q2 rectangle----------------------------------
L1=rectangle_integrale(X,Y,h)

%Q3 trapezes-----------------------------------
L2=trapezes_integrale(a,b,n,h)

%Q4 simpson-----------------------------------
L3=simpson_integrale(a,b,n,h)

%Q5 Erreur relative 
Erelmethode1=abs(q-L1)
Erelmethode2=abs(q-L2)
Erelmethode3=abs(q-L3)



%Plus le n est GRAND plus la précision l'erreur est faible
%faire 3 courbes pour 3 méthodes avec n=10,15,20 