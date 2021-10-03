% DM Methodes numeriques pour l’ingenieur EISE3 Polytech Sorbonne 2019/2020
% El Kharroubi Karim
% Exercice 3 

function [err1, iter1] = methodesiter1(A,b,x0,nmax,tol) 
    x0=x0; 
    n=size(x0,1); % n = taille de x0
    normVal=Inf; 
    itr=0;        % itr = nombre d'itinerances 
    
    while normVal>tol &&  (itr < nmax)
        xn=x0;
        
        for i=1:n
            
            sigma=0;
            
            for j=1:i-1
                    sigma=sigma+A(i,j)*x0(j);
            end
            
            for j=i+1:n
                    sigma=sigma+A(i,j)*xn(j);
            end
            
            x0(i)=(1/A(i,i))*(b(i)-sigma);
        end
        
        itr=itr+1;
        normVal=norm(xn-x0);
    end
   err1  = abs(x0(end)-1);
   iter1 = itr;
end