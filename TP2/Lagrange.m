function [Li]=Lagrange(X,x,i)
    n=length(X);
    Li=ones(size(x));
    for j=1:n
        if(i~=j)
            Li=Li.*(x-X(j))/(X(i)-X(j));
        end
    end
end
