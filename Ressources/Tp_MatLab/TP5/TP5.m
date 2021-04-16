clear all 
clc


A=[2,4,-4,1;3,6,1,-2;-1,1,2,3;1,1,-4,1]
B=[0;-7;4;2]

n=4
e=1*10^-6
P=[1,2,3,4]
PT=P.'
L=eye(n,n)

for k=1:n-1
    
    l=k 
    for i=k:n % find max indice
        
        max=abs(A(l,k))
       if max< abs(A(i,k))
           
           l=i
           max=abs(A(i,k))
       end
    end
    
    
    if abs(A(l,k))<e
        disp('probleme arreter le programe')
    break
    test=50;
    test
    else
        V=A(l,:) %permutation de l et k dans A
        A(l,:)=A(k,:)
        A(k,:)=V 
 
        V1=L(l,:) %permutation de l et k dans L
        L(l,:)=L(k,:)
        L(k,:)=V1 
 
        V2=PT(l,:) %permutation de l et k dans P
        PT(l,:)=PT(k,:)
        PT(k,:)=V2

           for i=k+1:n
            L(i,k) = A(i,k)/A(k,k)
            
                for j=k:n
                A(i,j)= A(i,j)-L(i,k)*A(k,j)
        
                end 
    
           end
         
     end
 end

    
