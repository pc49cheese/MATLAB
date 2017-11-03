% 5.49
% Find the Fourier coefficients an, bn for the triangle wave function.
% Make a plot somilar to fig. 5.23, comparing the function its self with 
% the first couple of terms in the Fourier series, and another for the 
% first six terms. Take fmax=1

x = -2:0.001:2;
tWave3 = zeros;
for n=1:2:5
    tWave3 = tWave3 + ((-1)^((n-1)/2)/n^2)*cos(n*pi*x);
end
tWave3 = (8/pi^2)*tWave3;

tWave6 = zeros;
for n=1:2:11
    tWave6 = tWave6 + ((-1)^((n-1)/2)/n^2)*cos(n*pi*x);
end
tWave6 = (8/pi^2)*tWave6;

tx = [-2 -1 0 1 2];
ty = [1 -1 1 -1 1];

plot(x,tWave3,'red',x,tWave6,'green',tx,ty,'blue')
%something dosent seem right in my plot, but i dont see anything wrong in
%my code.