t=0:0.001:1;
fc = input('Enter the frequencey of carrier signal(square wave)=');
fm = input('Enter the frequencey of message signal(sine wave)=');
a = input('Enter the amplitude of message signal=');
vc = square(2*pi*fc*t);
vm = sin(2*pi*fm*t);
n=length(vc);
for i=1:n
  if(vc(i)<=0)
   vc(i)=0;
  else
   vc(i)=1;
  end
endfor
y=vc.*vm;
subplot(3,1,1);
plot(t,vm);
title('Message Signal');
subplot(3,1,2);
plot(t,vc);
title('Carrier Signal');
subplot(3,1,3);
plot(t,y);
title('Natural Sampled Signal');
xlabel('Time Axis');
ylabel('Amplitude');
