function temp=tempck(x)
%x in celusis and convert into kelvin and give an output table
%call syntax: temp=tempck(x)
C = x;
K = 273+x;
temp=[C;K];
end
