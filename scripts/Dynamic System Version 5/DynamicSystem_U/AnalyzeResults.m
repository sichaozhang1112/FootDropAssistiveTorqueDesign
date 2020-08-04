%%
EndNum = 2400;
for ii = 1 : EndNum

[ xf(ii,:),xf_dot(ii,:),yf(ii,:),yf_dot(ii,:) ] = HeelToe( x(ii,:)',x_dot(ii,:)',y(ii,:)',y_dot(ii,:)',theta(ii,:)',theta_dot(ii,:)' );

[ Fgy(ii,:) ] = GroundReactionForceY( x(ii,:)',theta(ii,:)',xf(ii,:),xf_dot(ii,:),yf(ii,:),yf_dot(ii,:) );
% [ Fgx(ii,:),Fgy(ii,:) ] = GroundReactionForce( x(ii,:)',theta(ii,:)',xf(ii,:),xf_dot(ii,:),yf(ii,:),yf_dot(ii,:) );

[ phi(ii,:),phi_dot(ii,:) ] = GlobalAngle( x(ii,:)',x_dot(ii,:)',y(ii,:)',y_dot(ii,:)',theta(ii,:)',Fgy(ii,:) );

[ Sron(ii,:),Sroff(ii,:),Slon(ii,:),Sloff(ii,:),Sg(ii,:),Srst(ii,:),Slst(ii,:) ] = GlobalState( Fgy(ii,:),xf(ii,:),yf(ii,:),phi(ii,:) );

% [ Fgx(ii,:) ] = GroundReactionForceX( x(ii,:)',theta(ii,:)',xf(ii,:),xf_dot(ii,:),yf(ii,:),yf_dot(ii,:),Sg(ii,:),Xft(ii,:)' );

[ Tp(ii,:) ] = PassiveJointTorque( theta(ii,:)',theta_dot(ii,:)' );

[ Tm(ii,:) ] = MotorCommands( theta(ii,:)',theta_dot(ii,:)',u(ii,:)',Sron(ii,:),Sroff(ii,:),Slon(ii,:),Sloff(ii,:),Srst(ii,:),Slst(ii,:) );

[ Ta(ii,:) ] = ActiveJointTorque( Tm(ii,:) );

end
%%
figure(1);
for ii = 1:6
    subplot(6,1,ii)
    plot((1:EndNum),Sg(1:EndNum,ii));
    xlabel('step');
    ylabel(['Sg',num2str(ii)]);
end
%%
figure(2);
plot((1:EndNum),phi(1:EndNum,1));
ylim([0 2])
xlabel('step');
ylabel('phi');
%%
figure(3);
for ii = 1 : 4
    subplot(4,1,ii);
    hold on;
    plot((1:EndNum),Fgy(1:EndNum,ii));
    xlabel('step');
    ylabel(['Fgy',num2str(ii)])
end

figure(9);
for ii = 1 : 4
    subplot(4,1,ii);
    hold on;
    plot((1:EndNum),Fgx(1:EndNum,ii));
    xlabel('step');
    ylabel(['Fgx',num2str(ii)])
end

%%
figure(4);
for ii = 1 : 7
    subplot(7,1,ii);
    plot((1:EndNum),Tp(1:EndNum,ii));
    xlabel('step');
    ylabel(['Tp',num2str(ii)])
    ylim([-100 100])
end
%%
figure(1);
for ii = 4 : 7
    subplot(4,1,ii-3);
    hold on;
    plot((1:EndNum),Ta(1:EndNum,ii));
    xlabel('step');
    ylabel(['Ta',num2str(ii)])
    ylim([-100 100]);
end
%%
figure();
for ii = 1 : 7
    subplot(7,1,ii);
    plot((1:EndNum),Ta(1:EndNum,ii)+Tp(1:EndNum,ii));
    xlabel('step');
    ylabel(['T',num2str(ii)])
end
%%
figure(6);
TorqueNum = [7,8,11,12,15,16,19];
for ii = 1 : size(TorqueNum,2)
    subplot(7,1,ii);
    plot((1:EndNum),Tmr(1:EndNum,TorqueNum(ii)));
    xlabel('step');
    ylabel(['Tmr',num2str(TorqueNum(ii))])
end

figure(7);
for ii = 1 : size(TorqueNum,2)
    subplot(7,1,ii);
    plot((1:EndNum),Tmi(1:EndNum,TorqueNum(ii)));
    xlabel('step');
    ylabel(['Tmi',num2str(TorqueNum(ii))])
end

figure();
for ii = 1 : size(TorqueNum,2)
    subplot(7,1,ii);
    plot((1:EndNum),Tmi(1:EndNum,TorqueNum(ii))+Tmr(1:EndNum,TorqueNum(ii)));
    xlabel('step');
    ylabel(['Tm',num2str(TorqueNum(ii))])
end
%%
figure(8)
plot(1:EndNum,Slst(1:EndNum));
xlabel('step');
ylabel('Slst')

%%
figure(8)
for ii = 1 : 4
    subplot(4,1,ii);
    plot(1:EndNum,yf(1:EndNum,ii));
    xlabel('step');
    ylabel(['yf',num2str(ii)]);
end

figure()
for ii = 1 : 4
    subplot(4,1,ii);
    plot(1:EndNum,xf(1:EndNum,ii));
    hold on;
    plot(1:EndNum,Xft(1:EndNum,ii));
    xlabel('step');
    ylabel(['xf',num2str(ii)]);
end

%%
figure(10);
for ii = 1 : 4
    subplot(4,1,ii);
    plot((1:EndNum),Xft(1:EndNum,ii));
    xlabel('step');
    ylabel(['xft',num2str(ii)])
end

%%
figure(11);
temp = [];
for ii = 1 : EndNum
    temp = [temp,LargeThanZero(-yf(ii,2))];
end
plot(1:EndNum,temp)

%%
figure(12);
for ii = 1 : 8
    subplot(8,1,ii);
    plot((1:EndNum),theta_dot(1:EndNum,ii));
    xlabel('step');
    ylabel(['theta_dot',num2str(ii)])
end

%%
figure(12);
for ii = 1 : 8
    subplot(8,1,ii);
    plot((1:EndNum),x_dot(1:EndNum,ii));
    xlabel('step');
    ylabel(['x_dot',num2str(ii)])
end

%%
figure(13)
for ii = 1 : 4
    subplot(4,1,ii);
    plot(1:EndNum,yf_dot(1:EndNum,ii));
    hold on;
    plot(1:EndNum,yf_dot(1:EndNum,ii).*lun(-yf(1:EndNum,ii)));
    xlabel('step');
    ylabel(['yf_dot',num2str(ii)]);
end

%%
figure(14)
for ii = 1 : 4
    subplot(4,1,ii);
    plot(1:EndNum,xf_dot(1:EndNum,ii));
    xlabel('step');
    ylabel(['xf_dot',num2str(ii)]);
end

%%
figure();
for ii = 1 : 8
    subplot(8,1,ii);
    plot(1:EndNum,theta(1:EndNum,ii));
    xlabel('step');
    ylabel(['theta',num2str(ii)]);
end

figure();
for ii = 1 : 8
    subplot(8,1,ii);
    plot(1:EndNum,theta_dot(1:EndNum,ii));
    xlabel('step');
    ylabel(['thetadot',num2str(ii)]);
end
%%
figure();
temp = [];
temp2 = [];
temp3 = [];
temp4 = [];
for ii = 1 : EndNum
    temp = [temp,-(xf(ii,3)-Xft(ii,3))*LargeThanZero(-yf(ii,3))]; 
    temp2 = [temp2,-(xf(ii,3)-Xft(ii,3))];
    temp3 = [temp3,xf(ii,3)];
    temp4 = [temp4,Xft(ii,3)];
%     temp = [temp,xf_dot(ii,2)];
end

plot(temp4);
hold on;
plot(temp3);
hold on;
plot(temp2);
hold on;
plot(temp);
%%
figure();
temp = [];
temp2 = [];
bg = 1000;
kg = 30000;
for ii = 1 : EndNum
    temp = [temp,bg*fun(-yf_dot(ii,3))]; 
    temp2 = [temp2,-kg*yf(ii,3)*lun(-yf(ii,3))];
% temp2 = [temp2,bg*fun(-yf_dot(ii,4))];
end

plot(temp2);
hold on;
plot(temp,'r');
%%
figure();
temp = [];
temp2 = [];
temp3 = [];
bg = 500;
kg = 30000;
for ii = 1 : EndNum
    temp = [temp,-bg*xf_dot(ii,1)*lun(-yf(ii,1))]; 
%     temp3 = [temp3,-bg*xf_dot(ii,1)]; 
    temp2 = [temp2,-kg*(xf(ii,1)-Xft(ii,1))*lun(-yf(ii,1))];
% temp2 = [temp2,bg*fun(-yf_dot(ii,4))];
end

% plot(temp3);
hold on;
plot(temp2);
hold on;
plot(temp,'r');