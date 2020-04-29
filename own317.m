#3.17 all three parts

#part a
#S1:  e^j5t -> te^j5t
#not linear, not time invariant
subplot(3,2,1)
t_test = linspace(0,3);
SA= @(t) exp(t.*5*i);
plot(t_test, SA(t_test))

subplot(3,2,2)
SB= @(t) t.*exp(t.*5*i);
plot(t_test, SB(t_test))

#part b
#S2: e^j5t -> te^j5(t-1)
# linear, time invariant
subplot(3,2,3)
SC= @(t) exp(t.*5*i);
plot(t_test, SC(t_test))

subplot(3,2,4)
SD= @(t) exp((t-1).*5*i);
plot(t_test, SD(t_test))

#part c
# S3: e^j5t -> cos(5t)
#not linear, time invariant
subplot(3,2,5)
SE= @(t) exp(t.*5*i);
plot(t_test, SC(t_test))

subplot(3,2,6)
SF= @(t) cos(t.*5)
plot(t_test, SF(t_test))




