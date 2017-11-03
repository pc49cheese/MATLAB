%6.1 
%Set up any 3 × 3 matrix a. Write some command-line statements to perform
%the following operations on a:
%(a) interchange columns 2 and 3;
%(b) add a fourth column (of 0s);
%(c) insert a row of 1s as the new second row of a (i.e., move the current
%second and third rows down);
%(d) remove the second column.

% a = magic(3)
% %(a)
% a = [a(:,1) a(:,3) a(:,2)]
% %(b)
% a = [a(:,1) a(:,2) a(:,3) [0;0;0]]
% %(c)
% a = [a(1,:);[0 0 0 0];a(2,:);a(3,:)]
% %(d)
% a(:,2) = []

% 6.3
% Solve the equations:
% 2x ? y + z = 4,
% x + y + z = 3,
% 3x ? y ? z = 1,
% using the left division operator. Check your solution by computing the
% residual. Also compute the determinant (det) and the condition estimator
% (rcond). What do you conclude?

% A = [2 -1 1;1 1 1;3 -1 -1];
% b = [4 3 1]';
% x = A\b
% r = A*x - b
% det(A)
% rcond(A)

