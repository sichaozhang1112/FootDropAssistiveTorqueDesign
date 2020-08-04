function [ x_Normal,x_dot_Normal,y_Normal,y_dot_Normal,theta_Normal,theta_dot_Normal ] = BodyStateThisTime( t_Normal )

load('BodyState_Normal.mat');

x_Normal = interp1(t,x,t_Normal,'pchip')';
x_dot_Normal = interp1(t,x_dot,t_Normal,'pchip')';

y_Normal = interp1(t,y,t_Normal,'pchip')';
y_dot_Normal = interp1(t,y_dot,t_Normal,'pchip')';

theta_Normal = interp1(t,theta,t_Normal,'pchip')';
theta_dot_Normal = interp1(t,theta_dot,t_Normal,'pchip')';


end