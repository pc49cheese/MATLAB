% 12.3
% Reproduce the golf.m (projectile script) and look at the effect of varying
% the friction coefficient k. Look at k = 0.01 and 0.03. What influence does
% friction have on the optimum angle for a launch speed of 100?

k = 0.03;
g = 9.81;
dt = 0.01;

v0 = input('What is the initial velocity of the ball in m/s?' );
thetad = input('What is the launch angle in degrees?' );
% dist = zeros(1,45);
% thetad = 1:1:45;
% for m = 1:45
% theta = thetad(m) * pi/180;

x(1) = 0;
y(1) = 0;

theta = thetad * pi/180;
vx(1) = v0*cos(theta);
vy(1) = v0*sin(theta);

for n=1:2000
    vx(n+1) = vx(n) - dt*(k*vx(n)*sqrt(vx(n)^2+vy(n)^2));
    vy(n+1) = vy(n) - dt*(k*vy(n)*sqrt(vx(n)^2+vy(n)^2) + g);
    x(n+1) = x(n) + dt*vx(n);
    y(n+1) = y(n) + dt*vy(n);
    if y(n+1)<0
        y(n+1) = 0;
        y = y(1:n+1);
        x = x(1:n+1);
        %dist(m) = x(n+1);
        disp(['range is ' num2str(x(n+1))]);
        break;
    end
end
% end
% [maxd,i] = max(dist)
plot(x,y);

%32deg for k=0.01
%29deg fro k=0.03