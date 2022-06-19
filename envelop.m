clc
clear all
close all
[x,y]=meshgrid(0:10:2000,0:10:100000);
mach=x./(-0.004069.*y+1117);
alpha=0.5116-(8.89*(10^(-6))*y/3.28);
rho=0.002377*exp(-y/3.28/28325.66);
clf
he=y+(0.5/32.152231).*x.^2;
contour(x,y,he,'ShowText','on','Levelstep',10000)
hold on
q=0.5.*rho.*x.*x;
ps=(x.*(alpha./0.78)*0.3-x.*(0.052*0.78*140./q)-(0.0057/(0.78*140)).*q.*x)*60;%change beta、(t/w)、(w/s)、k1、Cd0
fs=ps./(alpha.*0.36);%change tsfc
v=[0,1000,2000,3000,4000,5000,6000,7000,8000,10000,11000,12000];
contour(x,y,ps,v,'ShowText','on')
% contour(x,y,rho,'Showtext','on')
title('Flight Envelope'),
xlabel('Velocity(ft/s)'),ylabel('Altitude(ft)')