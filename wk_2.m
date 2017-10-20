%Chapter 2,3 exercizes
%2.6
%Write a program to calculate x, where:
% x = (-b + sqrt(b^2 - 4ac))/2a
%and a = 2, b = ?10, c = 12 (Answer: 3.0)

% a = input('what is a?');
% b = input('what is b?');
% c = input('what is c?');
% x = (-b + sqrt(b^2 - 4*a*c))/(2*a);
% disp(x)

%2.21
%The steady-state current I flowing in a circuit that contains a resistance
%R = 5, capacitance C = 10, and inductance L = 4 in series is given by:
%I = E/sqrt(R^2 + (2??L - 1/(2??C))^2)
%where E = 2 and ? = 2 are the input voltage and angular frequency,
%respectively. Compute the value of I. (Answer: 0.0396)

% R = 5;
% C = 10;
% L = 4;
% E = input('what is E');
% o = input('what is omega');
% I = E/sqrt(R^2 + (2*pi*o*L - 1/(2*pi*o*C))^2);
% disp(I)

%2.23
% Suppose you deposit $50 in a bank account every month for a year.
% Every month, after the deposit has been made, interest at the rate of 1%
% is added to the balance: After 1 month the balance is $50.50, and after
% 2 months it is $101.51. Write a program to compute and print the balance
% each month for a year. Arrange the output to look something like this:
% MONTH  MONTH-END BALANCE
% ...      ...

% bal = 0;
% disp('MONTH MONTH-END BALANCE') 
% for m=1:12
%  bal = bal+50;
%  bal = bal*1.01;
%  format bank
%  disp([m bal])
% end

%3.1
% The structure plan in this example defines a geometric construction.
% Carry out the plan by sketching the construction:
% 1. Draw two perpendicular x- and y-axes
% 2. Draw the points A (10, 0) and B (0, 1)
% 3. While A does not coincide with the origin repeat: Draw a straight line
% joining A and B Move A one unit to the left along the x-axis Move B
% one unit up on the y-axis
% 4. Stop.

% xy = linspace(0,1);
% line(xy,0*xy)
% line(0*xy,xy)
% for a = 10:-1:1
%     y = -a*xy+1;
%     line(xy,y)
% end

%3.8
% Let’s examine the shape of a uniform cable hanging under its own
% weight. The shape is described by the formula y = cosh(x/c). This shape
% is called a uniform catenary. The parameter c is the vertical distance from
% y = 0 where the bottom of the catenary is located. Plot the shape of the
% catenary between x = ?10 and x = 10 for c = 5. Compare this with the
% same result for c = 4.

% x = linspace(-10,10);
% c = input('what is c');
% y = cosh(x/c);
% line(x,y)