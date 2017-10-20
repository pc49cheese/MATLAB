% 1.50 *** [Computer] The differential equation (1.51) for the skateboard of Example 1.2 cannot be
% solved in terms of elementary functions, but is easily solved numerically. (a) If you have access to
% software, such as Mathematica, Maple, or Matlab, that can solve differential equations numerically,
% solve the differential equation for the case that the board is released from ¢(0) = 20 degrees, using the
% values R = 5 m and g = 9.8 rnJs2. Make a plot of ¢ against time for two or three periods. (b) On the
% same picture, plot the approximate solution (1.57) with the same ¢(0) = 20°. Comment on your two
% graphs. Note: If you haven't used the numerical solver before, you will need to learn the necessary
% syntax. For example, in Mathematica you will need to learn the syntax for "NDSolve" and how to plot
% the solution that it provides. This takes a bit of time, but is something that is very well worth learning. 
% eq 1.51: ¢'' = -(g/R)*sin¢
% approximate solution (1.57): ¢(t)=¢(0)*cos(?*t) where ?=sqrt(g/R)

R = 5;
g = 9.8;
omega = sqrt(g/R);
phi0 = pi/9;
syms phi(t);
[V] = odeToVectorField(diff(phi, 2) == -omega*sin(phi));
M = matlabFunction(V,'vars', {'t','Y'});
sol = ode45(M,[0 4*pi],[phi0 0]);
fplot(@(t)deval(sol,t,1), [0, 4*pi])

x = linspace(0,4*pi);
line(x,phi0*cos(omega*x),'Color','red')