clear all
clc

p = 0;
while p<0.05 | p > 0.95
    p = input("Probability of succes(0.05 < p < 0.95) = ");
end

for n=1:10
    mu = n*n;
    sigma = sqrt(n*p*(1-p));
    k = 0:n;
    px=binopdf(k,n,p);
    plot(k,px,'o');
    hold on;

    kreal = 0:0.01:n;
    normpx = normpdf(kreal,mu,sigma);
    plot(kreal,normpx);
    hold off;

    title("Approximation of bino with norm (n="+n+")");
    legend("bino","norm");
  

    pause(0.5);
end