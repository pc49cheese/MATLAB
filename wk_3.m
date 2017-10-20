%4.1
% Write some MATLAB statements which will:
% (a) find the length C of the hypotenuse of a right-angle triangle in terms
% of the lengths A and B of the other two sides;
% (b) find the length C of a side of a triangle given the lengths A and B of
% the other two sides and the size in degrees of the included angle ?,
% using the cosine rule:

%a
% A = input('What is the length of side A? ');
% B = input('What is the length of side B? ');
% C = sqrt(A^2 + B^2);
% disp(['The length of side C is ' num2str(C)])

%b
% A = input('What is the length of side A? ');
% B = input('What is the length of side B? ');
% theta = input('What is the angle in degrees between A and B? ');
% C = sqrt(A^2 + B^2 - 2*A*B*cosd(theta));
% disp(['The length of side C is ' num2str(C)])

%4.3
% There are 39.37 in. in a metre, 12 in. in a foot, and 3 ft in a yard. Write a
% script to input a length in metres (which may have a decimal part) and
% convert it to yards, feet, and inches. (Check: 3.51 m converts to 3 yds 2 ft
% 6.19 in.)
% m = input('how many meters?');
% in = 39.37*m;
% ft = in/12;
% yd = ft/3;
% in = mod(in,12);
% ft = floor(ft);
% ft = mod(ft,3);
% yd = floor(yd);
% disp([num2str(m) ' meters is: ' num2str(yd) ' yards, ' num2str(ft) ' feet and, ' num2str(in) ' inches.'])

%4.7
% Design an algorithm (i.e., write the structure plan) for a machine which
% must give the correct amount of change from a $100 note for any
% purchase costing less than $100. The plan must specify the number and
% type of all notes and coins in the change, and should in all cases give as
% few notes and coins as possible. (If you are not familiar with dollars and
% cents, use your own monetary system.)

% cost = input('What is the cost of the item? ');
% change = 100*(100 - cost);
% bills = [];
% disp(['Your change is $' num2str(change/100)])
% for bill = [5000 2000 1000 500 100 50 25 10 05 01]
%     bills = [bills floor(change/bill)];
%     change = change - bill*bills(end);
%     if bill>=100
%     disp([num2str(bills(end)) ' $' num2str(bill/100) ' bills'])
%     end
% end
% disp([num2str(bills(6)) ' 50 cent peices'])
% disp([num2str(bills(7)) ' quarters'])
% disp([num2str(bills(8)) ' dimes'])
% disp([num2str(bills(9)) ' nickles'])
% disp([num2str(bills(10)) ' pennies'])

% 5.3
% Write some MATLAB statements on the command line which use logical
% vectors to count how many elements of a vector x are negative, zero, or
% positive. Check that they work, e.g., with the vector:
% [-4 0 5 -3 0 3 7 -1 6]

% in = input('Input the vector to check. ');
% pos = in>0;
% neg = in<0;
% zero = in==0;
% disp(['There are ' num2str(length(find(pos))) ' positive numbers, ' num2str(length(find(neg))) ' negative numbers, and ' num2str(length(find(zero))) ' zeros.'])

% 5.6
% Write some statements on the command line to remove the largest
% element(s) from a vector. Try it out on x = [1 2 5 0 5]. The idea is to
% end up with [1 2 0] in x. Use find and the empty vector [ ].

% in = input('Input the vector to check. ');
% M = in==max(in);
% M = find(M);
% in(M) = [];
% disp('The vector without its largest elements is:')
% disp(in)