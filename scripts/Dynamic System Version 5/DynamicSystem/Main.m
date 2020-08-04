%%
clear all;

%%
WriteFirstGlobal;
LoadInitialCondition;

%%

tspan = linspace(0,10,6000);

[t,state] = ode45(@EquationOfMotion,tspan,state0);

%%
x(:,2) = state(:,1);
x_dot(:,2) = state(:,2);
y(:,2) = state(:,3);
y_dot(:,2) = state(:,4);
theta = state(:,5:12);
theta_dot = state(:,13:20);

u = state(:,21:34);
v = state(:,35:48);

%%
LoadParameter;

x(:,1) = x(:,2) - lp*cos(theta(:,2)) - lH(2)*cos(theta(:,1));
y(:,1) = y(:,2) + lp*sin(theta(:,2)) + lH(2)*sin(theta(:,1));
x(:,3) = x(:,2) + lp*cos(theta(:,2)) + lt*cos(theta(:,3));
y(:,3) = y(:,2) - lp*sin(theta(:,2)) - lt*sin(theta(:,3));
x(:,4) = x(:,2) + lp*cos(theta(:,2)) + lt*cos(theta(:,4));
y(:,4) = y(:,2) - lp*sin(theta(:,2)) - lt*sin(theta(:,4));
x(:,5) = x(:,3) + lt*cos(theta(:,3)) + ls*cos(theta(:,5));
y(:,5) = y(:,3) - lt*sin(theta(:,3)) - ls*sin(theta(:,5));
x(:,6) = x(:,4) + lt*cos(theta(:,4)) + ls*cos(theta(:,6));
y(:,6) = y(:,4) - lt*sin(theta(:,4)) - ls*sin(theta(:,6));
x(:,7) = x(:,5) + ls*cos(theta(:,5)) + lf(1)*cos(theta(:,7));
y(:,7) = y(:,5) - ls*sin(theta(:,5)) - lf(1)*sin(theta(:,7));
x(:,8) = x(:,6) + ls*cos(theta(:,6)) + lf(1)*cos(theta(:,8));
y(:,8) = y(:,6) - ls*sin(theta(:,6)) - lf(1)*sin(theta(:,8));

x_dot(:,1) = x_dot(:,2) + lp.*sin(theta(:,2)).*theta_dot(:,2) + lH(2).*sin(theta(:,1)).*theta_dot(:,1);
y_dot(:,1) = y_dot(:,2) + lp.*cos(theta(:,2)).*theta_dot(:,2) + lH(2).*cos(theta(:,1)).*theta_dot(:,1);
x_dot(:,3) = x_dot(:,2) - lp.*sin(theta(:,2)).*theta_dot(:,2) - lt.*sin(theta(:,3)).*theta_dot(:,3);
y_dot(:,3) = y_dot(:,2) - lp.*cos(theta(:,2)).*theta_dot(:,2) - lt.*cos(theta(:,3)).*theta_dot(:,3);
x_dot(:,4) = x_dot(:,2) - lp.*sin(theta(:,2)).*theta_dot(:,2) - lt.*sin(theta(:,4)).*theta_dot(:,4);
y_dot(:,4) = y_dot(:,2) - lp.*cos(theta(:,2)).*theta_dot(:,2) - lt.*cos(theta(:,4)).*theta_dot(:,4);
x_dot(:,5) = x_dot(:,3) - lt.*sin(theta(:,3)).*theta_dot(:,3) - ls.*sin(theta(:,5)).*theta_dot(:,5);
y_dot(:,5) = y_dot(:,3) - lt.*cos(theta(:,3)).*theta_dot(:,3) - ls.*cos(theta(:,5)).*theta_dot(:,5);
x_dot(:,6) = x_dot(:,4) - lt.*sin(theta(:,4)).*theta_dot(:,4) - ls.*sin(theta(:,6)).*theta_dot(:,6);
y_dot(:,6) = y_dot(:,4) - lt.*cos(theta(:,4)).*theta_dot(:,4) - ls.*cos(theta(:,6)).*theta_dot(:,6);
x_dot(:,7) = x_dot(:,5) - ls.*sin(theta(:,5)).*theta_dot(:,5) - lf(1).*sin(theta(:,7)).*theta_dot(:,7);
y_dot(:,7) = y_dot(:,5) - ls.*cos(theta(:,5)).*theta_dot(:,5) - lf(1).*cos(theta(:,7)).*theta_dot(:,7);
x_dot(:,8) = x_dot(:,6) - ls.*sin(theta(:,6)).*theta_dot(:,6) - lf(1).*sin(theta(:,8)).*theta_dot(:,8);
y_dot(:,8) = y_dot(:,6) - ls.*cos(theta(:,6)).*theta_dot(:,6) - lf(1).*cos(theta(:,8)).*theta_dot(:,8);


%% joint position

head(:,1) = x(:,1) - lH(2)*cos(theta(:,1));
head(:,2) = y(:,1) + lH(2)*sin(theta(:,1));

waist(:,1) = x(:,2) - lp*cos(theta(:,2));
waist(:,2) = y(:,2) + lp*sin(theta(:,2));

hip(:,1) = x(:,4) - lt*cos(theta(:,4));
hip(:,2) = y(:,4) + lt*sin(theta(:,4));

knee_right(:,1) = x(:,6) - ls*cos(theta(:,6));
knee_right(:,2) = y(:,6) + ls*sin(theta(:,6));

ankle_right(:,1) = x(:,8) - lf(1)*cos(theta(:,8));
ankle_right(:,2) = y(:,8) + lf(1)*sin(theta(:,8));

knee_left(:,1) = x(:,5) - ls*cos(theta(:,5));
knee_left(:,2) = y(:,5) + ls*sin(theta(:,5));

ankle_left(:,1) = x(:,7) - lf(1)*cos(theta(:,7));
ankle_left(:,2) = y(:,7) + lf(1)*sin(theta(:,7));

heel_right(:,1) = x(:,8) - lf(2)*cos(Alpha(1)-theta(:,8));
heel_right(:,2) = y(:,8) - lf(2)*sin(Alpha(1)-theta(:,8));

heel_left(:,1) = x(:,7) - lf(2)*cos(Alpha(1)-theta(:,7));
heel_left(:,2) = y(:,7) - lf(2)*sin(Alpha(1)-theta(:,7));

toe_right(:,1) = x(:,8) + lf(3)*cos(Alpha(2)+theta(:,8)-pi);
toe_right(:,2) = y(:,8) - lf(3)*sin(Alpha(2)+theta(:,8)-pi);

toe_left(:,1) = x(:,7) + lf(3)*cos(Alpha(2)+theta(:,7)-pi);
toe_left(:,2) = y(:,7) - lf(3)*sin(Alpha(2)+theta(:,7)-pi);


% xr(1) = x(7)-lf(2)*cos(Alpha(1)-theta(7));
% xr(2) = x(8)-lf(2)*cos(Alpha(1)-theta(8));
% xr(3) = x(7)+lf(3)*cos(Alpha(2)+theta(7)-pi);
% xr(4) = x(8)+lf(3)*cos(Alpha(2)+theta(8)-pi);

clear Alpha b Beta bg Epsilon g lf lg lH ii lp ls lt k kg If IH Ip Is It ...
    mf mH mp ms mt p p_i q tau tau_prime u0 w w_0 XF YF;
%%
save('Gait_Data.mat');
