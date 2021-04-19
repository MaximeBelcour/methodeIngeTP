function [X,h] = discr_integrale(a,b,n)
    h = (b-a)/n;

    for g=0:n
        X(g+1)=a+h*g
    end
end
