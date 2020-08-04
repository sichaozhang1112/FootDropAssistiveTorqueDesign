%%
figure(1);
set(gcf,'Position',[100,0,1500,900]);
% Theta = [theta_temp(SwingEndNum+1:EndNum,:);theta_temp(1:SwingStartNum,:);theta_temp(SwingStartNum+1:SwingEndNum,:)];
% Color = [0 0.5 1];Pattern = '-'; Name = 'Normal';% normal
% Color = [1 0.5 0];Pattern = '-'; Name = 'Foot Drop';% foot drop
% Color = [1 0 0.5];Pattern = '--'; Name = 'Foot Drop with Device'; % foot drop with device
% Color = [1 0 0];Pattern = '--'; Name = 'Add Ankle Torque'; % foot drop with device
% Color = [0.25 0.75 0];Pattern = '--'; Name = 'Add Ankle-Knee Torque'; % foot drop with device
% Color = [1 0.5 0];Pattern = '--'; Name = 'Add Ankle-Knee-Hip Torque'; % foot drop with device
% Color = [1 0.75 0];Pattern = '--'; Name = 'Add Ankle-Hip Torque'; % foot drop with device

figure(1);
for ii = 1 : 4
load('Gait_Normal.mat');Color = [0 0.5 1];Pattern = '-'; Name = 'Normal';% normal
StanceStartNum = SgStartNum(4,1);
SwingEndNum = SgStartNum(4,2);
EndNum = SwingEndNum-StanceStartNum+1;
Theta = theta(StanceStartNum:SwingEndNum,:)*180/pi;
hold on;
subplot(3,4,ii)
plot(linspace(0,100,EndNum),Theta(:,6)-Theta(:,8)-0.576*180/pi,Pattern,'color',Color,'LineWidth',1.5,'DisplayName',Name);
% plot(t(StanceStartNum:SwingEndNum),Theta(:,6)-Theta(:,8)-0.576*180/pi,Pattern,'color',Color,'LineWidth',1.5,'DisplayName',Name);
grid on;
% xlabel('Gait (%)');
% ylabel('Angle (Degree)');
% title(['Ankle']);

hold on;
subplot(3,4,ii+4)
plot(linspace(0,100,EndNum),Theta(:,6)-Theta(:,4),Pattern,'color',Color,'LineWidth',1.5,'DisplayName',Name);
% plot(t(StanceStartNum:SwingEndNum),Theta(:,6)-Theta(:,4),Pattern,'color',Color,'LineWidth',1.5,'DisplayName',Name);
grid on;
% xlabel('Gait (%)');
% ylabel('Angle (Degree)');
% title(['Knee']);

hold on;
subplot(3,4,ii+8)
plot(linspace(0,100,EndNum),Theta(:,2)-Theta(:,4),Pattern,'color',Color,'LineWidth',1.5,'DisplayName',Name);
% plot(t(StanceStartNum:SwingEndNum),Theta(:,2)-Theta(:,4),Pattern,'color',Color,'LineWidth',1.5,'DisplayName',Name);
grid on;
% xlabel('Gait (%)');
% ylabel('Angle (Degree)');
% title(['Hip']);

if ii == 1
    load('Gait_U_AddAnkleTorque.mat');Color = [1 0 0];Pattern = '--'; Name = 'Add Ankle Torque'; % foot drop with device
elseif ii == 2
    load('Gait_U_AddAnkleKneeTorque.mat');Color = [0.25 0.75 0];Pattern = '--'; Name = 'Add Ankle-Knee Torque'; % foot drop with device
elseif ii == 3
    load('Gait_U_AddAnkleHipTorque.mat');Color = [1 0.75 0];Pattern = '--'; Name = 'Add Ankle-Hip Torque'; % foot drop with device
elseif ii == 4
    load('Gait_U_AddAnkleKneeHipTorque.mat');Color = [1 0.5 0];Pattern = '--'; Name = 'Add Ankle-Knee-Hip Torque'; % foot drop with device
end
StanceStartNum = SgStartNum(4,1);
SwingEndNum = SgStartNum(4,2);
EndNum = SwingEndNum-StanceStartNum+1;
Theta = theta(StanceStartNum:SwingEndNum,:)*180/pi;
hold on;
subplot(3,4,ii)
plot(linspace(0,100,EndNum),Theta(:,6)-Theta(:,8)-0.576*180/pi,Pattern,'color',Color,'LineWidth',1.5,'DisplayName',Name);
% plot(t(StanceStartNum:SwingEndNum),Theta(:,6)-Theta(:,8)-0.576*180/pi,Pattern,'color',Color,'LineWidth',1.5,'DisplayName',Name);
grid on;
% xlabel('Gait (%)');
% ylabel('Angle (Degree)');
title(['Ankle']);
set(gca,'FontSize',15);
ylim([-30 20]);

hold on;
subplot(3,4,ii+4)
plot(linspace(0,100,EndNum),Theta(:,6)-Theta(:,4),Pattern,'color',Color,'LineWidth',1.5,'DisplayName',Name);
% plot(t(StanceStartNum:SwingEndNum),Theta(:,6)-Theta(:,4),Pattern,'color',Color,'LineWidth',1.5,'DisplayName',Name);
grid on;
% xlabel('Gait (%)');
% ylabel('Angle (Degree)');
title(['Knee']);
set(gca,'FontSize',15);
ylim([0 80]);

hold on;
subplot(3,4,ii+8)
plot(linspace(0,100,EndNum),Theta(:,2)-Theta(:,4),Pattern,'color',Color,'LineWidth',1.5,'DisplayName',Name);
% plot(t(StanceStartNum:SwingEndNum),Theta(:,2)-Theta(:,4),Pattern,'color',Color,'LineWidth',1.5,'DisplayName',Name);
grid on;
% xlabel('Gait (%)');
% ylabel('Angle (Degree)');
title(['Hip']);
set(gca,'FontSize',15);
ylim([-40 60]);
legend('show');
end
subplot(3,4,1);ylabel('Angle (Degree)');
subplot(3,4,5);ylabel('Angle (Degree)');
subplot(3,4,9);ylabel('Angle (Degree)');xlabel('Gait (%)');
subplot(3,4,10);xlabel('Gait (%)');
subplot(3,4,11);xlabel('Gait (%)');
subplot(3,4,12);xlabel('Gait (%)');

clear;
%%
% clear;
print -djpeg -r600 CompareUAddTorque