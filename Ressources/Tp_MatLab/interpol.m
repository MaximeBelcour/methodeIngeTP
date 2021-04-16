function y = interpol(X,Y,x)

y=0;   %Pour qu'il ajoute le y qu'il à calculer avant à celui qu'il calcul a l'instant
n = 11;
X=[-10,-8,-6,-4,-2,0,2,4,6,8,10];
x=9
for i = 1 : n
    
    Li = Lagrange(X,x,i);
    y = Li * Y(i) + y;
    
end

end
