function [ Ta ] = NeuroMusculoSkeletal( x,x_dot,y,y_dot,theta,theta_dot,u,v )

[ xf,xf_dot,yf,yf_dot ] = HeelAndToe( x,x_dot,y,y_dot,theta,theta_dot );

[ Fgy ] = GroundReactionForceY( x,theta,xf,xf_dot,yf,yf_dot );

[ phi,phi_dot ] = GlobalAngle( x,x_dot,y,y_dot,theta,Fgy );

[ Sron,Sroff,Slon,Sloff,Sg,Srst,Slst ] = GlobalState( Fgy,xf,yf,phi );

[ Tm ] = MotorCommands( theta,theta_dot,u,Sron,Sroff,Slon,Sloff,Srst,Slst );

[ Ta ] = ActiveJointTorque( Tm );

end

