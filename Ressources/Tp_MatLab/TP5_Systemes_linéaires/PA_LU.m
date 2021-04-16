
clc
clear all


%Initialisation-----------------
A = [2,4,-4,1;3,6,1,-2;-1,1,2,3;1,1,-4,1]
b = [0;-7;4;2];
n = length(A);
L = eye(n,n);
P=[1,2,3,4];
PT=P.';

e=1*10^-6;

%A*x = b


% Trouver sur la première colonne la valeur la plus grande

for j=1:n-1;
  l=j;
    for i = j : n;
            
        max=abs(A(l,j));
        
        if max < abs(A(i,j));  
            l=i;
            max=abs(A(i,j));
        end 
    end
    
    
  %if abs(A(l,j))<e
   %     disp('probleme arreter le programe')
   % break
   % test=50;
   % test
  %else
        
        V=A(l,:); %permutation de l et j dans A
        A(l,:)=A(j,:);
        A(j,:)=V ;
 
        V1=L(l,:); %permutation de l et j dans L
        L(l,:)=L(j,:);
        L(j,:)=V1 ;
 
        V2=PT(l,:); %permutation de l et j dans P
        PT(l,:)=PT(j,:);
        PT(j,:)=V2  ; 
   
end



A




















    
   
    









