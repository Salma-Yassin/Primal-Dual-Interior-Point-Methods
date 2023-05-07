
function [x,y,s]= initial_point(A,b,c,n)

x = A'*((A * A') \ b);
y = (A * A') \ (A * c);
s = c - A' * y;

delta_x = max(-1.5 * min(x), 0);
delta_s = max(-1.5 * min(s), 0);
e = ones(n, 1);

delta_x_s = 0.5 * (x + delta_x * e)' * (s + delta_s * e);

delta_x_c = delta_x + delta_x_s / (sum(s) + n * delta_s);
delta_s_c = delta_s + delta_x_s / (sum(x) + n * delta_x);

x = x + delta_x_c * e;
s = s + delta_s_c * e;



end 


