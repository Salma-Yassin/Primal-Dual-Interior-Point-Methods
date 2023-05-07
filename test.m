
%% Central Path with fixed step  Problem 1

b = [6];
c = [-1.1;-1;0];
A = [1 1 1];

alpha_k = 0.9;
segma_k = 0.5;
tol = 0.001; 

[x , y , s , k , fval] = central_IP(A , b , c , alpha_k , segma_k, tol);

disp("The optimal Value is")
disp(fval)
fprintf("The number of iterations is",k)
disp(k)
fprintf("The solution is",k)
disp(x)

%% Problem 2 -- problem 3.36 Roa

b = [24 ; 3 ; 4 ; 3];
c = [5;2;0;0;0;0];
A = [3 4 1 0 0 0;1 -1 0 1 0 0;1 4 0 0 -1 0;3 1 0 0 0 -1];

alpha_k = 0.9;
segma_k = 0.5;
tol = 0.001; 

[x , y , s , k , fval] = central_IP(A , b , c , alpha_k , segma_k, tol);

disp("The optimal Value is")
disp(fval)
fprintf("The number of iterations is",k)
disp(k)
fprintf("The solution is",k)
disp(x)


%% Problem 3

b = [10 ; -6];
c = [1 ; 0 ; -1 ; -3];
A = [2 0 2 3; 0 -2 -2 -6];

alpha_k = 0.8;
segma_k = 0.5;
tol = 0.001; 

[x , y , s , k , fval] = central_IP(A , b , c , alpha_k , segma_k, tol);

disp("The optimal Value is")
disp(fval)
fprintf("The number of iterations is",k)
disp(k)
fprintf("The solution is",k)
disp(x)


%% Central path with adaptive step  Problem 1

b = [6];
c = [-1.1;-1;0];
A = [1 1 1];

tol = 0.001; 
segma_k = 0.5;

[x , y , s , k , fval] = central_IP_adaptive(A , b , c, segma_k ,tol);

disp("The optimal Value is")
disp(fval)
fprintf("The number of iterations is",k)
disp(k)
fprintf("The solution is",k)
disp(x)

%% Problem 2

b = [24 ; 3 ; 4 ; 3];
c = [5;2;0;0;0;0];
A = [3 4 1 0 0 0;1 -1 0 1 0 0;1 4 0 0 -1 0;3 1 0 0 0 -1];

tol = 0.001;
segma_k = 0.5;

[x , y , s , k , fval] = central_IP_adaptive(A , b , c, segma_k ,tol);

disp("The optimal Value is")
disp(fval)
fprintf("The number of iterations is",k)
disp(k)
fprintf("The solution is",k)
disp(x)



%% Problem 3

b = [10 ; -6];
c = [1 ; 0 ; -1 ; -3];
A = [2 0 2 3; 0 -2 -2 -6];

tol = 0.001; 
segma_k = 0.5;

[x , y , s , k , fval] = central_IP_adaptive(A , b , c, segma_k ,tol);

disp("The optimal Value is")
disp(fval)
fprintf("The number of iterations is",k)
disp(k)
fprintf("The solution is",k)
disp(x)


%% Mehrotra  Problem 1

b = [6];
c = [-1.1;-1;0];
A = [1 1 1];

tol = 0.001; 
eta = 0.99 ;

[x,y,s,k,fval] = mehrotra(A , b , c, tol,eta);

disp("The optimal Value is")
disp(fval)
fprintf("The number of iterations is",k)
disp(k)
fprintf("The solution is",k)
disp(x)



%% Problem 2

b = [24 ; 3 ; 4 ; 3];
c = [5;2;0;0;0;0];
A = [3 4 1 0 0 0;1 -1 0 1 0 0;1 4 0 0 -1 0;3 1 0 0 0 -1];

tol = 0.001; 
eta = 0.99 ;

[x,y,s,k,fval] = mehrotra(A , b , c, tol,eta);

disp("The optimal Value is")
disp(fval)
fprintf("The number of iterations is",k)
disp(k)
fprintf("The solution is",k)
disp(x)


%% Problem 3

b = [10 ; -6];
c = [1 ; 0 ; -1 ; -3];
A = [2 0 2 3; 0 -2 -2 -6];

tol = 0.001; 
eta = 0.99 ;

[x,y,s,k,fval] = mehrotra(A , b , c, tol,eta);

disp("The optimal Value is")
disp(fval)
fprintf("The number of iterations is",k)
disp(k)
fprintf("The solution is",k)
disp(x)




