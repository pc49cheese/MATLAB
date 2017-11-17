% 11.1
% The Newton quotient:
% (f(x+h)-f(x))/h
% may be used to estimate the first derivative f?(x) of a function f(x), if h
% is “small.” Write a program to compute the Newton quotient for the
% function:
% f(x)=x^2
% at the point x = 2 (the exact answer is 4) for values of h starting at 1, and
% decreasing by a factor of 10 each time (use a for loop). The effect of
% rounding error becomes apparent when h gets “too small,” i.e., less than
% about 10?12.

% x = 2;
% for i = 0:15
%     h = 10^(-i);
%     f = ((x+h)^2 - x^2)/h;
%     disp(['h=10^-' num2str(i)]);
%     disp(['approx value is ' num2str(f)]);
%     error = abs(4-f);
%     disp(['error is ' num2str(error)]);
%     disp(' ');
% end

% 11.2
% The solution of the set of simultaneous equations:
% ax+by=c, dx+ey=f
% is given by 
% x=(ce-bf)/(ae-bd), y=(af-cd)/(ae-bd)
% If (ae ? bd) is small, rounding error may cause quite large inaccuracies in
% the solution. Consider the system:
% 0. 2038x + 0. 1218y = 0. 2014, 0. 4071x + 0. 2436y = 0. 4038
% The exact solution to this system is x = ?2, y = 5.
% Show that with four-figure floating point arithmetic the solution
% obtained is x = ?1, y = 3.

a = 0.2038;
b = 0.1218;
c = 0.2014;
d = 0.4071;
e = 0.2436;
f = 0.4038;

ae = floor(a * e * 1e4) / 1e4;
bd = floor(b * d * 1e4) / 1e4;
ce = floor(c * e * 1e4) / 1e4;
bf = floor(b * f * 1e4) / 1e4;
af = floor(a * f * 1e4) / 1e4;
cd = floor(c * d * 1e4) / 1e4;

%with rounding error
x=(ce-bf)/(ae-bd)
y=(af-cd)/(ae-bd)

%without rounding error
x=(c*e-b*f)/(a*e-b*d)
y=(a*f-c*d)/(a*e-b*d)
