function [x,y,s,k,fval] = mehrotra(A , b , c , tol, eta)

[m,n] = size(A);
% Choose an initial point to start the algorithm 
[x,y,s] = initial_point(A,b,c,n); %%Choosing initial point is 

% book keeping 
x_matrix = [];
s_matrix = [];
f_vector = [];

% Step index 
k = 0;  

density = (nnz(A) / (m * n)) * 100;
if density < 20
    A = sparse(A);
    c = sparse(c);
    b = sparse(b);
end


while(x'*s>tol)
    
    k = k + 1;
    
    mu_k = (x'*s)/n;
    X = vpa(diag(x));
    S = vpa(diag(s));
    
    x_matrix = [x_matrix  x];
    s_matrix = [s_matrix  s];
    f_vector = [f_vector c'*x];
    
    % predictor step 
    
    rxs = x.*s;
    rc = A'*y + s - c;
    rb = A*x - b;
    % solve the system 
    
    D_squared = vpa(S\X); % the backslash replaces the inverse 
    prod = A*D_squared*A';
    [L,p] = chol(prod);
    L_T = L';
    z = inv(L_T)*(-rb - A * D_squared * rc + A * inv(S)*rxs);
    dy_aff = inv(L)*z;
    ds_aff = -rc - A'*dy_aff;
    dx_aff = - inv(S) * rxs - D_squared * ds_aff;
    
    % calculate alphas and mu
    
    alpha_aff_pri = adaptive(x , dx_aff);
    alpha_aff_dual = adaptive(s , ds_aff);
    mu_aff = (x + alpha_aff_pri * dx_aff)'*(s + alpha_aff_dual * ds_aff)/n;
    
    % set the centring paramter 
    segma_k = (mu_aff/mu_k)^3;
    
    
    % corrector 
    rxs = x.*s + dx_aff .* ds_aff - segma_k * mu_k;
    % solve the system 
    
    z = inv(L_T)*(-rb - A * D_squared * rc + A * inv(S)*rxs);
    dy = inv(L)*z;
    ds = -rc - A'*dy;
    dx = - inv(S) * rxs - D_squared * ds;
    
    % step lengths 
    alpha_pri = step_adaptive(x , dx, eta);
    alpha_dual= step_adaptive(s , ds, eta);
    
    % set 
    x = vpa(x + alpha_pri * dx);
    y = vpa(y + alpha_dual * dy);
    s = vpa(s + alpha_dual * ds);
end 

% visualization 
graphs(x_matrix,s_matrix,f_vector);
fval = f_vector(end);

end