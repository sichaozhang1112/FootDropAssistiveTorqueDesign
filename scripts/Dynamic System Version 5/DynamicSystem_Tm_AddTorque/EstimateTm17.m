function [ Tm17,u13 ] = EstimateTm17( phi,Sg,Slon,Sloff,Slst,theta_dot )

[ u13 ] = EstimateU13( phi,Sg );

%%
% LoadParameter;

% the magnitude of the coefficients in the rythmic force controller
p(1) = 5.0; p(2) = 10.0; p(3) = 4.0; p(4) = 2.0; p(5) = 15.0;
p(6) = 4.0; p(7) = 3.0; p(8) = 2.0; p(9) = 15.0;
p(10) = 8.0; p(11) = 2.0; p(12) = 3.0;
p(13) = 2.0; p(14) = 8.0; p(15) = 1.5; 
p(16) = 12.0; p(17) = 1.0; p(18) = 7.0;
% the impedance parameters
p_i(1) = 500.0; p_i(2) = 10.0; p_i(3) = 800.0;
p_i(4) = 20.0; p_i(5) = 150.0; p_i(6) = 10.0; p_i(7) = 10.0; 

%%

Tm17 = (Slon*p(14)+Sloff*p(15))*fun(u13)+Slst*p_i(7)*fun(theta_dot(8)-theta_dot(6));
% Tm17 = 0;
end
