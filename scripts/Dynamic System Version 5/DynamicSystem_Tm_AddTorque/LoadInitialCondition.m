%% the musculoskeletal system
x = zeros(8,1);
y = zeros(8,1);
x_dot = zeros(8,1);
y_dot = zeros(8,1);
theta = zeros(8,1);
theta_dot = zeros(8,1);
u = zeros(14,1);
v = zeros(14,1);

x(2) = 1.000; 
y(2) = 0.984;
x_dot(2) = 0.7; y_dot(2) = 0.0;
theta(1) = 1.714; 
theta(2) = 1.588;
theta(4) = 1.618;
theta(6) = 1.623;
theta(3) = 0.653; 
theta(5) = 1.418;
theta(7) = 0.543; 
theta(8) = 0.984;
theta_dot(1) = 0.0; theta_dot(2) = 0.0;
theta_dot(3) = -1.0; theta_dot(4) = 1.0;
theta_dot(5) = -5.0; theta_dot(6) = 2.0;
theta_dot(7) = -8.0; theta_dot(8) = 0.0;

%%
% [ x,y,x_dot,y_dot ] = KinematicConstraint( x,y,x_dot,y_dot,thet,thet_dot );

% LoadParameter;
% 
% x(1) = x(2) - lp*cos(theta(2)) - lH(2)*cos(theta(1));
% y(1) = y(2) + lp*sin(theta(2)) + lH(2)*sin(theta(1));
% x(3) = x(2) + lp*cos(theta(2)) + lt*cos(theta(3));
% y(3) = y(2) - lp*sin(theta(2)) - lt*sin(theta(3));
% x(4) = x(2) + lp*cos(theta(2)) + lt*cos(theta(4));
% y(4) = y(2) - lp*sin(theta(2)) - lt*sin(theta(4));
% x(5) = x(3) + lt*cos(theta(3)) + ls*cos(theta(5));
% y(5) = y(3) - lt*sin(theta(3)) - ls*sin(theta(5));
% x(6) = x(4) + lt*cos(theta(4)) + ls*cos(theta(6));
% y(6) = y(4) - lt*sin(theta(4)) - ls*sin(theta(6));
% x(7) = x(5) + ls*cos(theta(5)) + lf(1)*cos(theta(7));
% y(7) = y(5) - ls*sin(theta(5)) - lf(1)*sin(theta(7));
% x(8) = x(6) + ls*cos(theta(6)) + lf(1)*cos(theta(8));
% y(8) = y(6) - ls*sin(theta(6)) - lf(1)*sin(theta(8));
% 
% x_dot(1) = x_dot(2) + lp*sin(theta(2))*theta_dot(2) + lH(2)*sin(theta(1))*theta_dot(1);
% y_dot(1) = y_dot(2) + lp*cos(theta(2))*theta_dot(2) + lH(2)*cos(theta(1))*theta_dot(1);
% x_dot(3) = x_dot(2) - lp*sin(theta(2))*theta_dot(2) - lt*sin(theta(3))*theta_dot(3);
% y_dot(3) = y_dot(2) - lp*cos(theta(2))*theta_dot(2) - lt*cos(theta(3))*theta_dot(3);
% x_dot(4) = x_dot(2) - lp*sin(theta(2))*theta_dot(2) - lt*sin(theta(4))*theta_dot(4);
% y_dot(4) = y_dot(2) - lp*cos(theta(2))*theta_dot(2) - lt*cos(theta(4))*theta_dot(4);
% x_dot(5) = x_dot(3) - lt*sin(theta(3))*theta_dot(3) - ls*sin(theta(5))*theta_dot(5);
% y_dot(5) = y_dot(3) - lt*cos(theta(3))*theta_dot(3) - ls*cos(theta(5))*theta_dot(5);
% x_dot(6) = x_dot(4) - lt*sin(theta(4))*theta_dot(4) - ls*sin(theta(6))*theta_dot(6);
% y_dot(6) = y_dot(4) - lt*cos(theta(4))*theta_dot(4) - ls*cos(theta(6))*theta_dot(6);
% x_dot(7) = x_dot(5) - ls*sin(theta(5))*theta_dot(5) - lf(1)*sin(theta(7))*theta_dot(7);
% y_dot(7) = y_dot(5) - ls*cos(theta(5))*theta_dot(5) - lf(1)*cos(theta(7))*theta_dot(7);
% x_dot(8) = x_dot(6) - ls*sin(theta(6))*theta_dot(6) - lf(1)*sin(theta(8))*theta_dot(8);
% y_dot(8) = y_dot(6) - ls*cos(theta(6))*theta_dot(6) - lf(1)*cos(theta(8))*theta_dot(8);

%% the neural rythm generator
u(1) = 1.0; u(2) = -1.0; u(3) = -1.0; u(4) = 1.0;
u(5) = 1.0; u(6) = 1.0; u(7) = 1.0; u(8) = -1.0;
u(9) = -1.0; u(10) = 1.0; 
u(11) = 1.0; u(12) = -1.0; 
u(13) = 1.0; u(14) = -1.0;

for ii = 1 : 14
    v(ii) = 1.0;
end

%%
% state0 = [x;x_dot;y;y_dot;theta;theta_dot;u;v];
state0 = [x(2);x_dot(2);y(2);y_dot(2);theta;theta_dot;u;v];
state0 =[7.52960948227978,1.57303773143668,0.938787757659675,-0.188470926610861,1.57312653805530,1.62744818293954,1.14255366490784,1.66983216584731,1.24018316560550,2.17176177554736,0.942787099954251,1.32182318486197,-0.0577412107671904,0.841604489880231,5.51370571870136,0.550349176192117,5.02646388550815,2.63358122980727,13.0823435127948,4.32131350451186,-0.753347510365459,3.62612072953144,-11.3336879579172,4.80248808651492,3.84180849784737,-8.77999521060549,2.41970366880007,-3.38303501748139,-2.58298640528554,1.74307878105328,-9.57462527399984,4.39322328877721,-1.23097559228401,2.34346067593978,1.81478067080264,1.47845120744997,1.29197256967584,1.64226350569195,1.07901907164499,1.67219992260388,1.69111177066739,0.913184926986043,0.947306705553649,1.69255063480601,1.20471457384793,1.84070803075798,1.44999280705693,1.15877340505220];

%%
clear Alpha b Beta bg Epsilon g lf lg lH ii lp ls lt k kg If IH Ip Is It ...
    mf mH mp ms mt p p_i q tau tau_prime u0 w w_0 x y x_dot y_dot theta theta_dot u v 