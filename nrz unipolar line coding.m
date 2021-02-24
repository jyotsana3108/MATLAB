%nrz unipolar line coding
N=10;
n=randi([0 1],1,N);
for m=1:N
  if n(m)==1
    nn(m)=1;
   else
    nn(m)=0;
  endif
endfor
i=1;
t=0:0.01:length(n);
for j=1:length(n)
  if t(j)<=i
    y(j) = nn(i);
  else
    y(j) = nn(i);
    i=i+1;
  endif
endfor
plot(t,y)
axis([0 N -2 2])
