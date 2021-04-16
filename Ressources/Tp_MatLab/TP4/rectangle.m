function int=rectangle(X,Y,h)
n=length(Y)
int=0
for i=1:n-1
    
int=Y(i)*h+int
end
end

    
