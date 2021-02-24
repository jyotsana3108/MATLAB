function factn = factorial(n) 
%factorial:function to compute factorial of n;
%call syntax: factn = factorial(n);
factn = 1;
for k=n:-1:1
    factn = factn*k;
end
end
