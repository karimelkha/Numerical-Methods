% DM Methodes numeriques pour l’ingenieur EISE3 Polytech Sorbonne 2019/2020
% El Kharroubi Karim
% Exercice 1 

  func = '(x-1)*log(x)';
  dfunc = '(x-1)/x + log(x)';
  
  % 1. voir dm
  
  % 2. 
  % voir Newton1.m 
  x0   = 2;
  tol  = 1.e-8;
  nmax = 50;
  [nfin,err1] = Newton1(x0,tol,nmax,func,dfunc);
  nfin;         % nfin =  27
  err1;         % err1 = 
                ##  0.5809402158036
                ##  0.2272866023341
                ##  0.1000281812555
                ##  0.0468716208299
                ##  0.0226819980763
                ##  0.0111564629801
                ##  0.0055325832877
                ##  0.0027549400765
                ##  0.0013746396915
                ##  0.0006866132012
                ##  0.0003431300572
                ##  0.0001715209074
                ##  0.0000857494253
                ##  0.0000428719558
                ##  0.0000214352887
                ##  0.0000107174720
                ##  0.0000053586930
                ##  0.0000026793357
                ##  0.0000013396652
                ##  0.0000006698319
                ##  0.0000003349158
                ##  0.0000001674579
                ##  0.0000000837289
                ##  0.0000000418645
                ##  0.0000000209322
                ##  0.0000000104661
                ##  0.0000000052331
  % 3.
  [nfin,err2] = Newton2(x0,tol,nmax,func,dfunc);
  nfin;         % nfin = 5
  err2;         % err2 = 
                ##   1.161880431607190
                ##   0.154633333804432
                ##   0.007233911914516
                ##   0.000013185844774
                ##   0.000000000043467
                
  % 4. 
  x1 = 1:27;
  x2 = 1:5;
  figure;
  semilogy(x1,err1,x2,err2);
  title('Erreurs sur la solution des deux méthodes en fonction du nombre d itérations');
  xlabel('Nombre d itérations');
  ylabel('Erreur sur la solution des deux méthodes');
  legend('Newton1','Newton2');