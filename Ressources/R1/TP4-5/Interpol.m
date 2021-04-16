%somme
function Somme = Interpol(X,Y,x)
n=length(X);
Somme = 0;
for i = 1 : n
    Somme = Lagrange(X,x,i)*Y(i) + Somme;
end
disp (Somme)
end
