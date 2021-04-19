clear all 
clc


%Question 1 calculer l'intégrale analytiquement---------
fun=@(x)exp(-x);
q=integral(fun,0,1.2)

%Question 2 introduction définir l'intervalle------------------------
n=10
a=0
b=1.2

[X,h] = discr_integrale(a,b,n)
Y=exp(-X)

%Question 2 a) rectangle----------------------------------
L1=rectangle_integrale(X,Y,h)

%Question 2 b) trapezes-----------------------------------
L2=trapezes_integrale(a,b,n,h)

%Question 2 c) simpson-----------------------------------
L3=simpson_integrale(a,b,n,h)

%Question 3 l'erreur relative 
Erelmethode1=abs(q-L1)
Erelmethode2=abs(q-L2)
Erelmethode3=abs(q-L3)



%Plus le n est GRAND plus la précision l'erreur est faible
%faire 3 courbes pour 3 méthodes avec n=10,15,20 