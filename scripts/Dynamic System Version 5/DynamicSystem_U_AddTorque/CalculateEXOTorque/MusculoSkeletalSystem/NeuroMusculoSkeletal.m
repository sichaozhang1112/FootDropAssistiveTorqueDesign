function [ Ta,Tp,Fgx,Fgy ] = NeuroMusculoSkeletal( x,x_dot,y,y_dot,theta,theta_dot,u,v )

[ xf,xf_dot,yf,yf_dot,xft ] = HeelAndToe( x,x_dot,y,y_dot,theta,theta_dot );

[ Fgx,Fgy ] = GroundReactionForce( x,theta,xf,xf_dot,yf,yf_dot,xft );

[ phi,phi_dot ] = GlobalAngle( x,x_dot,y,y_dot,theta,Fgy );

[ Sron,Sroff,Slon,Sloff,Sg,Srst,Slst ] = GlobalState( Fgy,xf,yf,phi );

[ Tp ] = PassiveJointTorque( theta,theta_dot );

[ Tm ] = MotorCommands( theta,theta_dot,u,Sron,Sroff,Slon,Sloff,Srst,Slst );

[ Ta ] = ActiveJointTorque( Tm );

end

