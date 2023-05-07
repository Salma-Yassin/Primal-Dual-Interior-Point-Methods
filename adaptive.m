function min_x = adaptive(x , dx_aff)

min_x = 1;
for i=1:1:length(x)
    if dx_aff(i) < 0
        m =- x(i)/dx_aff(i);
        if m < min_x
            min_x = m;
        end
    end 

end 