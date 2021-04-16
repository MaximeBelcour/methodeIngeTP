function Mult = Lagrange(X,x,i)
n = length(X);
Mult = 1; %on initialise Mult à 1
for j=1 : n % boucle Lagrange
    if (i~=j)
    Mult = ((x-X(j))/(X(i)-X(j)))*Mult;
    end
end
end