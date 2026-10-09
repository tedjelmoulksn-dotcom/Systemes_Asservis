%f=tf(2* [-120 1],[7200 180 1]);
%ltiview(f)
epsilon=0.1;
omega=0.02;
f=omega/2*pi;
k=0.285;
alpha=1+1/(2*k);
g=(240*k/(1+2*k))*(1+(60/(180-240*k)))
Ti=100
Te=0.01;