function poly_list=cubic_polynomials(start_value,end_value,s_time,s_freq)
a = [0,0,0,0]';
a(1) = start_value;
a(2) = 0;
a(3) = 3/(s_time^2)*(end_value-start_value);
a(4) = -2/(s_time^3)*(end_value-start_value);
t = linspace(0,s_time,s_freq);
poly_list = a(2)+2*a(3)*t+3*a(4)*t.^2;
end