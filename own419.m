#4.19
#H(jw)= 1/ (jw+3)
# y(t) = e^-3 * u(t)- e^-4t *u(t)
#Y(jw)= Integrate(y(t) * e^-jwt)dt
#Y(jw)= (1/(jw+3) - 1/(jw+4)) ->>> simplify to 1/(jw+3)(jw+4)
#if H(jw)= Y/X
#X(jw)= 1/(jw+4)
#x(t)= e^-4t *u(t)

q= linspace(0,4);
subplot(2,2,1)
a= exp(-3)
yt= @(t) a*t.*(t>=0)  - exp(-4*t).*t.*(t>=0);
plot(q, yt(q))

subplot(2,2,2)
xt= @(t) exp(-4*t).*t.*(t>=0);
plot(q, xt(q))
