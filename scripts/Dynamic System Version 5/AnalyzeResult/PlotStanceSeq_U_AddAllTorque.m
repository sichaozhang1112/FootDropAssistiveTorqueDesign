%%
figure(1);
set(gcf,'Position',[100,0,1200,900]);
% Theta = [theta_temp(SwingEndNum+1:EndNum,:);theta_temp(1:SwingStartNum,:);theta_temp(SwingStartNum+1:SwingEndNum,:)];
% Color = [0 0.5 1];Pattern = '-'; Name = 'Normal';% normal
% Color = [1 0.5 0];Pattern = '-'; Name = 'Foot Drop';% foot drop
% Color = [1 0 0.5];Pattern = '--'; Name = 'Foot Drop with Device'; % foot drop with device
% Color = [1 0 0];Pattern = '--'; Name = 'Add Ankle Torque'; % foot drop with device
% Color = [0.25 0.75 0];Pattern = '--'; Name = 'Add Ankle-Knee Torque'; % foot drop with device
% Color = [1 0.5 0];Pattern = '--'; Name = 'Add Ankle-Knee-Hip Torque'; % foot drop with device
% Color = [1 0.75 0];Pattern = '--'; Name = 'Add Ankle-Hip Torque'; % foot drop with device

ankle_lim = [-30 30];
knee_lim = [0 80];
hip_lim = [-20 50];

figure(1);

load('Gait_Normal.mat');Color = [0 0.5 1];Pattern = '-'; Name = 'Normal';% normal
StanceStartNum = 1;
SwingEndNum = 2000;
EndNum = SwingEndNum-StanceStartNum+1;
Theta = theta(StanceStartNum:SwingEndNum,:)*180/pi;
hold on;
subplot(3,1,1)
plot(linspace(1,2000,EndNum),Theta(:,6)-Theta(:,8)-0.576*180/pi,Pattern,'color',Color,'LineWidth',1.5,'DisplayName',Name);
% plot(t(StanceStartNum:SwingEndNum),Theta(:,6)-Theta(:,8)-0.576*180/pi,Pattern,'color',Color,'LineWidth',1.5,'DisplayName',Name);
grid on;
% xlabel('Gait (%)');
% ylabel('Angle (Degree)');
% title(['Ankle']);
set(gca,'FontSize',15);

hold on;
subplot(3,1,2)
plot(linspace(1,2000,EndNum),Theta(:,6)-Theta(:,4),Pattern,'color',Color,'LineWidth',1.5,'DisplayName',Name);
% plot(t(StanceStartNum:SwingEndNum),Theta(:,6)-Theta(:,4),Pattern,'color',Color,'LineWidth',1.5,'DisplayName',Name);
grid on;
% xlabel('Gait (%)');
% ylabel('Angle (Degree)');
% title(['Knee']);
set(gca,'FontSize',15);

hold on;
subplot(3,1,3)
plot(linspace(1,2000,EndNum),Theta(:,2)-Theta(:,4),Pattern,'color',Color,'LineWidth',1.5,'DisplayName',Name);
% plot(t(StanceStartNum:SwingEndNum),Theta(:,2)-Theta(:,4),Pattern,'color',Color,'LineWidth',1.5,'DisplayName',Name);
grid on;
% xlabel('Gait (%)');
% ylabel('Angle (Degree)');
% title(['Hip']);
set(gca,'FontSize',15);

load('Gait_001U1309U14.mat');Color = [1 0.5 0];Pattern = '-'; Name = 'Foot Drop';

StanceStartNum = 1;
SwingEndNum = 2000;
EndNum = SwingEndNum-StanceStartNum+1;
Theta = theta(StanceStartNum:SwingEndNum,:)*180/pi;
hold on;
subplot(3,1,1)
plot(linspace(1,2000,EndNum),Theta(:,6)-Theta(:,8)-0.576*180/pi,Pattern,'color',Color,'LineWidth',1.5,'DisplayName',Name);
% plot(t(StanceStartNum:SwingEndNum),Theta(:,6)-Theta(:,8)-0.576*180/pi,Pattern,'color',Color,'LineWidth',1.5,'DisplayName',Name);
grid on;
% xlabel('Gait (%)');
ylabel('Angle (Degree)');
title(['Ankle']);
set(gca,'FontSize',15);
ylim(ankle_lim);

hold on;
subplot(3,1,2)
plot(linspace(1,2000,EndNum),Theta(:,6)-Theta(:,4),Pattern,'color',Color,'LineWidth',1.5,'DisplayName',Name);
% plot(t(StanceStartNum:SwingEndNum),Theta(:,6)-Theta(:,4),Pattern,'color',Color,'LineWidth',1.5,'DisplayName',Name);
grid on;
% xlabel('Gait (%)');
ylabel('Angle (Degree)');
title(['Knee']);
set(gca,'FontSize',15);
ylim(knee_lim);

hold on;
subplot(3,1,3)
plot(linspace(1,2000,EndNum),Theta(:,2)-Theta(:,4),Pattern,'color',Color,'LineWidth',1.5,'DisplayName',Name);
% plot(t(StanceStartNum:SwingEndNum),Theta(:,2)-Theta(:,4),Pattern,'color',Color,'LineWidth',1.5,'DisplayName',Name);
grid on;
xlabel('Time Step');
ylabel('Angle (Degree)');
title(['Hip']);
set(gca,'FontSize',15);
ylim(hip_lim);

%%
load('Gait_U_AddAllTorque.mat');Color = [1 0 0.5];Pattern = '--'; Name = 'Foot Drop with Torque';% foot drop with torque
StanceStartNum = 1;
SwingEndNum = 2000;
EndNum = SwingEndNum-StanceStartNum+1;
Theta = theta(StanceStartNum:SwingEndNum,:)*180/pi;
hold on;
subplot(3,1,1)
plot(linspace(1,2000,EndNum),Theta(:,6)-Theta(:,8)-0.576*180/pi,Pattern,'color',Color,'LineWidth',1.5,'DisplayName',Name);
% plot(t(StanceStartNum:SwingEndNum),Theta(:,6)-Theta(:,8)-0.576*180/pi,Pattern,'color',Color,'LineWidth',1.5,'DisplayName',Name);
grid on;
% xlabel('Gait (%)');
% ylabel('Angle (Degree)');
% title(['Ankle']);
set(gca,'FontSize',15);

hold on;
subplot(3,1,2)
plot(linspace(1,2000,EndNum),Theta(:,6)-Theta(:,4),Pattern,'color',Color,'LineWidth',1.5,'DisplayName',Name);
% plot(t(StanceStartNum:SwingEndNum),Theta(:,6)-Theta(:,4),Pattern,'color',Color,'LineWidth',1.5,'DisplayName',Name);
grid on;
% xlabel('Gait (%)');
% ylabel('Angle (Degree)');
% title(['Knee']);
set(gca,'FontSize',15);

hold on;
subplot(3,1,3)
plot(linspace(1,2000,EndNum),Theta(:,2)-Theta(:,4),Pattern,'color',Color,'LineWidth',1.5,'DisplayName',Name);
% plot(t(StanceStartNum:SwingEndNum),Theta(:,2)-Theta(:,4),Pattern,'color',Color,'LineWidth',1.5,'DisplayName',Name);
grid on;
% xlabel('Gait (%)');
% ylabel('Angle (Degree)');
% title(['Hip']);
set(gca,'FontSize',15);

legend('show');
clear;

% print -djpeg -r600 CompareNormalAndTmAndTmAddTorqueJointMotion