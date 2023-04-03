function [a] = p24r2(a,M,m,k)
    a=a+k*(M-a)*(a-m);
end
