#3.47
# x(t)= cos(2pit)
#periodic with period 1 but also periodic with period N
# x(t) can be described as SumOf(Ak * e^(jkt(2pi/N)))
# expand and simplify
# the only coefficents that are not 0 are 3,-3 @ 1/2

q=linspace(0,3);
subplot(2,2,1)
xt= @(t) cos(t.*2*pi);
plot(q,xt(q))

subplot(2,2,2)
omega= (2*pi)/3
Fxt=@(t) (0.5*exp(t.*i*omega*-3)) +(0.5*exp(t.*i*omega*3));
plot(q, Fxt(q))
