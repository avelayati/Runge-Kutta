function [yout] = ODE3(F,t0,h,tfinal,y0)
% Runge-Kutta solver for ODEs
% F: Function, t: point, h: step size, y0:initial value 
% To solve dy/dt = F(t,y) with y(t0) = y0

y = y0;
yout = y;

for t = t0 : h : tfinal-h
    s1 = F(t,y);
    s2 = F(t+h/2,y+h*s1/2);
    s3 = F(t+h/2,y+h*s2/2);
    s4 = F(t+h,y+h*s3);
    y = y + (h/6)*(s1+2*s2+2*s3+s4);
    yout = [yout; y]
end

