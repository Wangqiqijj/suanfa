function ret = nonlinear(chrom,sizepop)

for i=1:sizepop
    x=fmincon(inline('(1/8.82)*sqrt(abs(75.8415-17.64*(log((x(1)-37)*0.606*sqrt(pi*x(2)))*8.7087*x(2))-4.2994))-1+x(3)+x(4)+x(5)'),chrom(i,:)',[],[],[],[],[0 0 0 0 0],[44 55 0 0 0]);
    ret(i,:)=x';
end



