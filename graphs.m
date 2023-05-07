function graphs(x_matrix,s_matrix,f_vector)

[R,C] = size(x_matrix);

if R == 3
    x1s1 = x_matrix(1,:).*s_matrix(1,:);
    x2s2 = x_matrix(2,:).*s_matrix(2,:);
    x3s3 = x_matrix(3,:).*s_matrix(3,:);
    
    plot3(x1s1,x2s2,x3s3);
    title("Complementary condition")
    xlabel("x1s1")
    ylabel("x2s2")
    zlabel("x3s3")
    
    % Complementary condition
    figure();
    x1s1 = x_matrix(1,:).*s_matrix(1,:);
    x2s2 = x_matrix(2,:).*s_matrix(2,:);
    
    plot(x1s1,x2s2)
    title("Complementary condition 2-D")
    xlabel("x1s1")
    ylabel("x2s2")
    
    
    % Objective function reduction versus iteration
    figure();
    k = 1:1:length(f_vector);
    plot(k,f_vector)
    title("Objective function reduction versus iteration")
    xlabel("iteration")
    ylabel("f(x)")
    
    
    % Center path.
    
    figure();
    plot3(x_matrix(1,:),x_matrix(2,:),x_matrix(3,:));
    title("Center path")
    xlabel("x1")
    ylabel("x2")
    zlabel("x3")
    
else
    % Complementary condition
    x1s1 = x_matrix(1,:).*s_matrix(1,:);
    x2s2 = x_matrix(2,:).*s_matrix(2,:);
    
    plot(x1s1,x2s2)
    title("Complementary condition")
    xlabel("x1s1")
    ylabel("x2s2")
    
    % Objective function reduction versus iteration
    figure();
    k = 1:1:length(f_vector);
    plot(k,f_vector)
    title("Objective function reduction versus iteration")
    xlabel("iteration")
    ylabel("f(x)")
    
    % Center path.
    
    figure();
    plot(x_matrix(1,:),x_matrix(2,:));
    title("Center path")
    xlabel("x1")
    ylabel("x2")
    
end

end