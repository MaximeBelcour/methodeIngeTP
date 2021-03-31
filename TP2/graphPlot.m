X=[-10;-8;-6;-4;-2;0;2;4;6;8;10]
Y=[3.1623;2.8284;2.4495;2;1.4142;0;1.4142;2;2.4495;2.8284;3.1623]
xmin = -10;%Borne inférieur
xmax = 10;%Borne supérieur
x=xmin:xmax;%intervalle
y=sqrt(abs(x))
plot(x,y,'k:','linewidth',4);hold on%graphique en petit point conservé à l'écran
n=10%itérations
X= discr(xmin,xmax,n)
Y=sqrt(abs(X))
k=interpol(X,Y,x)
plot(x,k,'b');%graphique des fonctions précdénte
legend('Fonction F(x)','Fonction interploation')%Pour nommer les axes

disp('Erreur absolue : ')
erreurAbs=max(abs(k-y))
disp('Erreur quadratique : ')
erreurQuadra = sum((k-y).^2)
a = 0
for x=0:n
    a=a+((k-y).^2)
end
