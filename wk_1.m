%Chapter 1 Exercizes
%1.1
%Give values to variables a and b on the command line, e.g., a = 3 and
%b = 5. Write some statements to find the sum, difference, product and
%quotient of a and b.

%     a=sqrt(2);
%     b=pi;
%     a+b
%     a-b
%     a*b
%     a/b

%1.2
%In Section 1.2.5 of the text a script is given for an animation of the
%Mexican hat problem. Type this into the editor, save it and execute it.
%Once you finish debugging it and it executes successfully try modifying it.
%(a) Change the maximum value of n from 3 to 4 and execute the script.
%(b) Change the time delay in the pause function from 0.05 to 0.1. (c)
%Change the z = sin (r.*n)./r; command line to z = cos (r.*n); and
%execute the script.

%     [x y]=meshgrid(-8:0.5:8);
%     r=sqrt(x.^2+y.^2)+eps;
%     for n=-3:0.05:4;
%         z=cos(r.*n);
%         surf(z),view(-37,38),axis([0,40,0,40,-4,4]);
%         pause(0.1)
%     end

%1.3
% Assign a value to the variable x on the command line, e.g., x = 4 *
% piˆ2. What is the square root of x? What is the cosine of the square root
% of x?

%     x=4*pi^2;
%     sqrt(x)
%     cos(sqrt(x))

%1.4
% Assign a value to the variable y on the command line as follows: y = -1.
% What is the square root of y? Show that the answer is i

%     y=-1;
%     sqrt(y)