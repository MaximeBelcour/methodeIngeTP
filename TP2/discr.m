function [X]=discr(a,b,n)
    h=(b-a)/n;
    X=a:h:b;
end
