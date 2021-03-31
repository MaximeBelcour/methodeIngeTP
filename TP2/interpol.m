function [z]=interpol(X,Y,x)
    n=length(X);
    z=zeros(size(x));
    for i=1:n
        Lii=Lagrange(X,x,i);
        z=z+Lii.*Y(i);
    end
end
