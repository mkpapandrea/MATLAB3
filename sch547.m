#Schaum's 5.47 bode plots all 3 parts

#part a @ H(w)= 1+ (jw)/180
q= linspace(0,10000);
subplot(2,2,1)
BodeA= @(w) 20*log10(abs((1+ ((i.*w)/180))));
plot(q, BodeA(q))
xlabel('w')
ylabel('H(w)')
set(gca, 'XScale', 'log')



#part b H(w)= 1/ (1 +(jw/10))]
subplot (2,2,2)
BodeB= @(w)  20*log10(abs(( 1./ (1+ (i.*w)*0.1))))
plot(q, BodeB(q))
xlabel('w')
ylabel('H(w)')
set(gca, 'XScale', 'log')


#part c H(w) = ( 10^4 * (1+jw))/ (( 10+jw) *(100+jw))
#idk if this graph is right
subplot(2,2,3)
BodeC= @(w) 20*log10(abs( (10^4 .*(1+i.*w)) / ( (10 + i.*w) .* (100 + i.*w))));
plot(q, BodeC(q))
xlabel('w')
ylabel('H(w)')
set(gca, 'XScale', 'log')