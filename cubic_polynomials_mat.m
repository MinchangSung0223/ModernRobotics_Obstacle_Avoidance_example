function cubic_mat = cubic_polynomials_mat(start_value,end_value,s_time,s_freq)
[n,m] = size(start_value);
cubic_mat = {}
for i=1:1:n
    for j = 1:1:m
        cubic_mat{i,j} = cubic_polynomials(start_value(i,j),end_value(i,j),s_time,s_freq);
    end
end
end