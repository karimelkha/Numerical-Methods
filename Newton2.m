% DM Methodes numeriques pour l’ingenieur EISE3 Polytech Sorbonne 2019/2020
% El Kharroubi Karim
% Exercice 1 

function [nf,xdif]=Newton2(x0,tol,nmax,funct,dfunct)
  
  err=tol+1;      % erreur sur l'increment
  nit=0;          % nombre d'iterations
  xvect=x0;       % xvvect vecteur des iteres
  x=x0;           % variable x 
  fx=eval(funct); % f(x)
  xdif=[];        % vecteur des differences entres iteres consecutives
  m = 2;          % m = multiplicite
  
  while nit<nmax & err>tol % tant que le nb d'iter < nmax et que erreur>tol
    
      nit=nit+1;
      x=xvect(nit); % x prend la valeur xn
      dfx=eval(dfunct); % dfx = f'(x=xn)
      
      if dfx==0
        %printf(‘‘arrêt car dfunct est nulle’’);
        break
        
      else
        
        xn=x-m*fx(nit)/dfx;     % xn+1 = (xn-f(xn))/f'(xn)

        err=abs(xn-x);        % err = valeur absolue entre xn+1 et xn
        xdif=[xdif; err];     % on met err dans le vecteur xdif
        x=xn;                 % x prend la valeur xn+1
        xvect=[xvect;x];      % on ajoute xn+1 dans le vecteur xvect
        fx=[fx;eval(funct)];  % on ajoute f(xn+1) au vecteur fx
      end
    
  end
  
  x;      % valeur approchee de l
  nf=nit; % nombre d'iterations finales
  
return