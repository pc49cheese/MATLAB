% 7.4
% Write and test a function swop(x, y) which will exchange the values
% of its two input arguments.

% x = 1;
% y = 2;
% [x y] = swop(x,y);
% disp([x y])

% 7.5
% Write your own MATLAB function to compute the exponential function
% directly from its Taylor series 
% The series should end when the last term is less than 10?6. Test your
% function against the built-in function exp, but be careful not to make x
% too large—this could cause a rounding error.

% x = input('what is x?')
% taylor_exp(x)
% exp(x)

% 8.3 The following method of computing pi is due to Archimedes:
% 1. Let A = 1 and N = 6
% 2. Repeat 10 times, say:
% Replace N by 2N
% Replace A by [2 ? sqrt(4 ? A^2)]^1/2
% Let L = NA/2
% Let U = L/sqrt(1 ? A^2/2)
% Let P = (U + L)/2 (estimate of pi)
% Let E = (U ? L)/2 (estimate of error)
% Print N, P, E
% 3. Stop.
% Write a program to implement the algorithm.

% A = 1;
% N = 6;
% for n=1:10
%     N = 2*N;
%     A = (2 - sqrt(4 - A^2))^(1/2);
%     L = N*A/2;
%     U = L/sqrt(1 - A^2/2);
%     P = (U + L)/2;
%     E = (U - L)/2;
%     disp(N)
%     disp(P)
%     disp(E)
% end

% 8.5
% The transcendental number e (2.71828182845904…) can be shown to be
% the limit of: (1 + x)^(1/x)
% as x tends to zero (from above). Write a program which shows how this
% expression converges to e as x gets closer and closer to zero.

% for n=1:10
%     x = 1/n;
%     e = (1 + x)^(1/x);
%     err = abs(e - exp(1));
%     disp(['estimate of e is: ' num2str(e)])
%     disp(['error is: ' num2str(err)])
% end

% 8.11 
% Use the Taylor series expansionto write a program to compute cos x
% correct to four decimal places (x is in radians).
% See how many terms are needed to get four-figure agreement
% with the MATLAB function cos. Don’t make x too large; that
% could cause rounding error.

% x = input('what is x? ');
% c = 1;
% n = 1;
% while x^n/prod(1:n) > 0.00001
% c = c + (-1)^n*x^(2*n)/prod(1:2*n);
% n = n+1;
% end
% disp(['taylor approximation of cos x is: ' num2str(c)])
% disp(['matlab value for cos x is: ' num2str(cos(x))])
