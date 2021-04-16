function Li = Lagrange(X,x,i)

Li=1
n = 11;
i = 2
x=9
X=[-10,-8,-6,-4,-2,0,2,4,6,8,10];


for j= 1 : n
    
    if j~=n
        
        Li=((x-X(j))/(X(i)-X(j)))+ Li;
        
    end
    
end



