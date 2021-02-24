%pulse amplitude modulation
fc=20;
fm=2;
fs=1000;
t=1;
n=[0:1/fs:t];
n=n(1:end-1);
duty=20;
s=square(2*pi*fc*n,duty);
plot(s);
s(find(s<0))=0;
plot(s);
m=sin(2*pi*fm*n);
plot(m);
period_sam = length(n)/fc;
ind = 1:period_sam:length(n);
on_samp = ceil(period_sam*duty/100);
pam = zeros(length(n));
for i=1:length(n)
  pam(ind(i):ind(i)+on_samp)=m(ind(i));
endfor
plot(pam);
hold on;
plot(m,'r');
subplot(3,1,1);
plot(n,s);
ylim([-1.2 1.2]);
subplot(3,1,2);
plot(n,m);
ylim([-1.2 1.2]);
subplot(3,1,3);
plot(n,pam);
ylim([-1.2 1.2]);
