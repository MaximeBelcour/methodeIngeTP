function I=trapezes(a,b,n,h)
Q=[a:h:b];
I=0;
F=exp(-Q)
for m=1:n
I=I+(h/2)*(F(m)+F(m+1));
end

