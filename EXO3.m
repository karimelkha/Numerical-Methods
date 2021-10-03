% DM Methodes numeriques pour l’ingenieur EISE3 Polytech Sorbonne 2019/2020
% El Kharroubi Karim
% Exercice 3

  % 1. Calcul du rayon spectral à l'aide de la methode de Gauss-Seidel 
    % On a une equation de la forme Mx = Nx + b avec M = D - E et N = F
    % La matrice d'iteration est invM*N
    diag_2001 = 2.001*ones(1,50);   
    D = diag(diag_2001);
    diag_1 = -1*ones(1,49);
    size(diag_1);
    E = diag(diag_1,-1);
    F = diag(diag_1,1);
    M = D-E;
    N = F;
    Matrice_iteration = inv(M)*N;
    rayon = max(abs(eig(Matrice_iteration)));
    % on trouve rayon = 0.99521 ~= 1
  
  % 2. Voir methodesiter.m & methodesiter1.m
  
  % 3.
    n    = 50; % taille
    tol  = 0.000010000;
    nmax = 2000;
    A    = D-(E+F);
    b    = A*ones(n,1);
    x0   = zeros(n,1);
    
    [err,iter] = methodesiter(A,b,x0,nmax,tol);
    % r erreur absolue = 0.000024788 & iter = 375
    
    [err1,iter1] = methodesiter1(A,b,x0,nmax,tol);
    % r erreur absolue = 0.000024788 & iter = 375
    
            

