% DM Methodes numeriques pour l’ingenieur EISE3 Polytech Sorbonne 2019/2020
% El Kharroubi Karim
% Exercice 2 

function [nf,x,y] = pointfix_sys(x0,tol,nmax,funGx,funGy)
 
  err = tol+1;   nit = 0;
  xvect = x0(2); yvect1 = x0(1); 
  x = x0(2);     y = x0(1);
  xdif = [];     ydif = [];
  
  while nit<nmax & err>tol
    nit = nit+1;
    
    x = xvect(nit);     y = yvect1(nit);
    
    gx = eval(funGx);   gy = eval(funGy);
    
    xn = gx;            yn = gy;
    
    err = max(abs(xn - x),abs(yn - y));
    
    xdif = [xdif; err]; ydif = [ydif; err];
    
    x = xn;             y = yn; 
    
    xvect = [xvect;x]; yvect1 = [yvect1;y];
  endwhile
  
  nf = nit;
  
endfunction

