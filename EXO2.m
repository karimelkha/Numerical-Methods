% DM Methodes numeriques pour l’ingenieur EISE3 Polytech Sorbonne 2019/2020
% El Kharroubi Karim
% Exercice 2 

  % 1.
      % Pour x1* = (0,1)^T : 
        s1 = 0^2+1^2-1; % F(x1=0,x2=1) premiere ligne
        s2 = 2*0+1-1;   % F(x1=0,x2=1) premiere ligne
        % on trouve bien s1=0,s2=0 <=> F(x1*)=0
        
      % Pour x2* = (4/5,-3/5)^T : 
        s3 = (4/5)^2+(-3/5)^2-1; % F(x1=4/5,x2=-3/5) premiere ligne
        s4 = 2*(4/5)+(-3/5)-1;   % F(x1=4/5,x2=-3/5) premiere ligne
        % on trouve bien s1=4/5,s2=-3/5 <=> F(x2*)=0
  % 2.
      % Pour G1
        x1 = 0;
        x2 = 1;
        s1 = (1-x2)/2;
        s2 = sqrt(1-x1^2);
        % on trouve bien s1=x1 et s2=x2 <=> G1(x1*)=x1*
   
      % Pour G2
        x1 = 4/5;
        x2 = -3/5;
        s3 = (1-x2)/2;
        s4 = -sqrt(1-x1^2);
        % on trouve bien s1=x1 et s2=x2 <=> G2(x2*)=x2*
  % 3.

    % G1
    % syms x1 x2 en commentaires parce que pas reconnu sur octave (Matlab)
    G1 = [(1-x2)/2;sqrt(1-x1^2)];
    J1 = jacobian(G1,[x1,x2]); 
    % J1 =
    % [                    0, -1/2]
    % [ -x1/(1 - x1^2)^(1/2),    0]
    x1 = 0;
    x2 = 1;
    J1_pointx1p = eval(J1);
    % J1_pointx1p = 
    % [0   -0.5000]
    % [0         0]
    rayon_G1 = max(abs(eig(J1_pointx1p))); % rayon_G1=0
    
    % G2
    % syms x1 x2 en commentaires parce que pas reconnu sur octave (Matlab)
    G2 = [(1-x2)/2;-sqrt(1-x1^2)];
    J2 = jacobian(G2,[x1,x2]);
    % J2 =
    % [                   0, -1/2]
    % [ x1/(1 - x1^2)^(1/2),    0]
    x1 = 4/5;
    x2 = -3/5;
    J2_pointx2p = eval(J2);
    % J2_pointx2p =
    % [     0   -0.5000]
    % [1.3333         0]
    rayon_G2 = max(abs(eig(J2_pointx1p))); % rayon_G2=0.8165

   %4. Voir pointfix_sys.m
  
   %5.
  
      % Pour G1
      
      funGx = '(1-y)/2';
      funGy = 'sqrt(1-x^2)';
      x0     = [-0.9;0.9];
      tol    = 1.e-10;
      nmax   = 200;
      [nf,x,y] = pointfix_sys(x0,tol,nmax,funGx,funGy);
      % on trouve 
      % x =  5.5511e-17
      % y =  1
      % nf =  11 
    
      % Pour G2
      
      funGy = '-sqrt(1-x^2)';
      x0     = [0.9,0.9];
      tol    = 1.e-10;
      nmax   = 200;
      [nf,x,y] = pointfix_sys(x0,tol,nmax,funGx,funGy);
      % on trouve 
      % x =  0.80000
      % y =  -0.60000
      % nf =  115 

      

    


