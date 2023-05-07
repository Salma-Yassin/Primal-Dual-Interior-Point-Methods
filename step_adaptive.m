function min_x = step_adaptivestep_adaptive(x , dx_aff, eta)

min_x = 1;

for i=1:1:length(x)
    if dx_aff(i) < 0
        m =- eta*x(i)/dx_aff(i);
        if m < min_x
            min_x = m;
        end
    end 

end 