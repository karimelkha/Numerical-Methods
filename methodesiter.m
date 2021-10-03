% DM Methodes numeriques pour l’ingenieur EISE3 Polytech Sorbonne 2019/2020
% El Kharroubi Karim
% Exercice 3

function [x, iter] = methodesiter(A,b,x0,nmax,tol) 
    % x0 = zeros(n,1)
    [n, n]= size ( A ); % dimensions de A
    
    
    M = tril ( A );
        
    sol=ones(n,1);
    nosol=norm(sol);
    iter = 0;
    r   = b - A*x0 ;
    r0  = norm(r);
    aerr = norm(r);
    x = x0 ;
  
    while (aerr > tol) && (iter < nmax)
       iter = iter + 1;
       z = M\r;
       x = x + z
       r = b - A * x;
       aerr= norm(r);
    end
    
    x = abs(x(end)-1); % x = ||x_fin-x_exacte||
    iter;
end