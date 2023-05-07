function [x,y,s,k,fval] = central_IP_adaptive(A , b , c, segma_k, tol)

[m,n] = size(A);
% Choose an initial point to start the algorithm 
[x,y,s] = initial_point(A,b,c,n); %%Choosing initial point is  

% book keeping 
x_matrix = [];
s_matrix = [];
f_vector = [];

% intialize values 
e = ones([n,1]);

% Step index 
k = 0;

while(x'*s> tol)
    k = k+1;
    mu_k = (x'*s)/n;
    X = diag(x);
    S = diag(s);
    
    x_matrix = [x_matrix  x];
    s_matrix = [s_matrix  s];
    f_vector = [f_vector c'*x];
    

    
    rxs = x.*s - segma_k*mu_k;
    rc = A'*y + s - c;
    rb = A*x - b;
    % solve the system 
    
    D_squared = S\X; % the backslash replaces the inverse 
    prod = A*D_squared*A';
    L = chol(prod);
    L_T = L';
    z = inv(L_T)*(-rb - A * D_squared * rc + A * inv(S)*rxs);
    dy = inv(L)*z;
    ds = -rc - A'*dy;
    dx = - inv(S) * rxs - D_squared * ds;
    
      % calculate alphas and mu
    
    alpha_k_pri = adaptive(x , dx);
    alpha_k_dual = adaptive(s , ds);
   
    
    % get the new step 
    x = x + alpha_k_pri *  dx;
    y = y + alpha_k_dual * dy;
    s = s + alpha_k_dual * ds;
end 
% visualization 
graphs(x_matrix,s_matrix,f_vector);
fval = f_vector(end);

end