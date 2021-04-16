function discre = Disc(a,b,m)% creation de la fonction discreditation
h = (b-a)/m;
disp(h)
for i = 0 : m

    discre(i+1) = a+i*h

end
end
