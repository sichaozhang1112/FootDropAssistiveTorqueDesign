function [ Q,S ] = NeuroMusculoSkeletal( x,x_dot,y,y_dot,theta,theta_dot,u,v )

[ xf,xf_dot,yf,yf_dot ] = HeelAndToe( x,x_dot,y,y_dot,theta,theta_dot );

[ Fgy ] = GroundReactionForceY( x,theta,xf,xf_dot,yf,yf_dot );

[ phi,phi_dot ] = GlobalAngle( x,x_dot,y,y_dot,theta,Fgy );

[ Sron,Sroff,Slon,Sloff,Sg,Srst,Slst ] = GlobalState( Fgy,xf,yf,phi );

[ Q ] = StateDependentCoupling( Sg,u );

[ S ] = StateDependentInput( theta,theta_dot,phi,phi_dot,Sg,Srst,Slst,Sroff,Sloff );

end

