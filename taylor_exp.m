function y = taylor_exp(x)
%computes e^x using its taylor expansion
n=0;
y=0;
while x^n/factorial(n) > 10^(-6)
    y = y + x^n/factorial(n);
    n=n+1;
end
end

