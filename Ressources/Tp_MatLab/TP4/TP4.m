clear all 
clc


%calculer l'int�grale analytiquement---------
fun=@(x)exp(-x);
q=integral(fun,0,1.2)

%d�finir l'intervalle------------------------
n=10
a=0
b=1.2

[X,h] = discr_i(a,b,n)
Y=exp(-X)

%Q2 rectangle----------------------------------
L1=rectangle(X,Y,h)

%Q3 trapezes-----------------------------------
L2=trapezes(a,b,n,h)

%Q4 simpson-----------------------------------
L3=simpson(a,b,n,h)

%Q5 Erreur relative 
Erelmethode1=abs(q-L1)
Erelmethode2=abs(q-L2)
Erelmethode3=abs(q-L3)



%Plus le n est GRAND plus la pr�cision l'erreur est faible
%faire 3 courbes pour 3 m�thodes avec n=10,15,20 