% DM Methodes numeriques pour l’ingenieur EISE3 Polytech Sorbonne 2019/2020
% El Kharroubi Karim
% Exercice 4

  % 1. Voir DM 

  % 2. Voir f_exo4.m
  
  %% 3.
 
  N1 = 10;
  d = 10;
  [xv,uh] = f_exo4(N1,d)
  
  % xv = [ 0.090909   0.165289   0.239669   0.314050   0.388430   0.462810
  %        0.537190   0.611570   0.685950   0.760331   0.834711   0.909091]
  % uh = [ 0.00000    0.00003    0.00013    0.00037    0.00102    0.00276
  %        0.00740    0.01976    0.05271    0.14061    0.37499    1.00000]
  
  y = (e.^(d*xv)-1)/(e^d-1) % u(x) solution exacte
  % y = [0.000067289   0.000191690   0.000453420   0.001004080 
  %      0.002162622   0.004600102   0.009728361   0.020517800
  %      0.043217903   0.090977074   0.191458487   0.402863212]
  
  u_exact = '(exp(10*x1)-1)/(exp(10)-1)';
  figure;
  fplot(u_exact,[0,1],'-m'); hold on; plot(xv,uh,'k-*');
  title('Graphe de la solution exacte u(x) et de la solution numerique');
  xlabel('xv');
  ylabel('u(x)');
  legend('Solution exacte','Solution numerique');

  %% 4. 
    d1=10; d2=30;
    liste_err_d_10 = []; liste_err_d_30 = [];
    i = 1;
    
    for N1 = 10:5:40             % on souhaite calculer l'err relative pour N de 10 à 40
      
     [xv,uh1] = f_exo4(N1,d1);    % calcul de la solution numerique uh
     [xv,uh2] = f_exo4(N1,d2);
      
     y1 = ((e.^(d1*xv))-1)/((e^d1)-1);
     y2 = ((e.^(d2*xv))-1)/((e^d2)-1);
    
     n1 = norm(uh1-transpose(y1))/norm(transpose(y1)); % calcul de l'erreur relative
     n2 = norm(uh2-transpose(y2))/norm(transpose(y2));
     liste_erreur_d_10(i) = n1; 
     liste_erreur_d_30(i) = n2;
     i=i+1;
    endfor
    
    N = [10 15 20 25 30 35 40];
    figure;
    plot(N,liste_erreur_d_10);
    title('Graphe de l erreur relative de la solution approche en fonction du nombre N');
    xlabel('N');
    ylabel('Erreur relative');
    legend('Erreur relative');
  
   %% 5. 

    figure;
    plot(N,liste_erreur_d_30,N,liste_erreur_d_10);
    title('Graphe de l erreur relative de la solution approche pour d=10 et d=30 en fonction du nombre N');
    xlabel('N');
    ylabel('Erreur relative');
    legend('Erreur relative pour d=30','Erreur relative pour d=10'); 


  
 
  
  