function S=simpson(a,b,n,h)


G=[a:h:b];
F=exp(-G);
S=h/3*(F(1)+F(n+1));



for j=2:2:n
    S=S+4*(h/3)*F(j);
end




for j=3:2:n
    S=S+2*(h/3)*F(j);
end




end
