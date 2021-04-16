clear all
clc


%création des vecteurs lignes X et Y donnée dans le tableau du sujet
X=[-10,-8,-6,-4,-2,0,2,4,6,8,10];
Y=[3.1623,2.8284,2.4495,2.0000,1.4142,0,1.4142,2.0000,2.4495,2.8284,3.1623];

%Demande de x
%i=3
%x = 1
%x = input('x=');
n = length(X);
a = -1
b= 1

n=input('n=')

Xc = Disc(a,b,n);
u= length(Xc)
for c = 1:u
    Yc(c)=1/(1+25*(Xc(c))^2)
end

%utilisation de la fonction interpolation 
n2 = input('n2=')
for i = 1:n2
    Xc3(i)= ((b-a)/2)*cos(((2*i+1)/(2*(n2+1)))*pi)+(b+a)/2
end
w = length(Xc3);
for k = 1 : w
    Yc3(k)=Interpol(Xc,Yc,Xc3(k))
end

hold on 
fplot('1/(1+25*x^2)',[-1 1])
plot(Xc,Yc,'*')
plot(Xc3,Yc3)


