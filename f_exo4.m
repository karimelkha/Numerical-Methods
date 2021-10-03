% DM Methodes numeriques pour l’ingenieur EISE3 Polytech Sorbonne 2019/2020
% El Kharroubi Karim
% Exercice 4
function [xv,uh] = f_exo4(N,delta)
  
  
  h = 1/(N+1);
  xv = linspace(h,1-h,N);
  xv = [0, xv(1:end,:), 1];
  alpha = 2/(h^2);
  beta = delta/(2*h) - 1/(h^2);
  gamma = -delta/(2*h) -  1/(h^2);
  
  matrice_alpha = eye(N)*alpha;
  diag_beta = beta*ones(1,N-1);
  matrice_beta = diag(diag_beta,1);
  diag_gamma = gamma*ones(1,N-1);
  matrice_gamma = diag(diag_gamma,-1);
  
  A = matrice_alpha+matrice_beta+matrice_gamma;
  
  b = zeros(N,1);
  b(end) = -delta/(2*h) + 1/(h^2);
  
  u = A\b;
  
  % on ajoute un 0 au debut et un 1 a la fin a la matrice uh
   uh = [0; u(1:end,:); 1];
  
endfunction
