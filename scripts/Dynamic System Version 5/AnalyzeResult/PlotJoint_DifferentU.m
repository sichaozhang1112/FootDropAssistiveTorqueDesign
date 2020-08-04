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

figure(1);
for ii = 1 : 3
load('Gait_Normal.mat');Color = [0 0.5 1];Pattern = '-'; Name = 'Normal';% normal
StanceStartNum = SgStartNum(4,1);
SwingEndNum = SgStartNum(4,2);
EndNum = SwingEndNum-StanceStartNum+1;
Theta = theta(StanceStartNum:SwingEndNum,:)*180/pi;
hold on;
subplot(3,3,ii)
plot(linspace(0,100,EndNum),Theta(:,6)-Theta(:,8)-0.576*180/pi,Pattern,'color',Color,'LineWidth',1.5,'DisplayName',Name);
% plot(t(StanceStartNum:SwingEndNum),Theta(:,6)-Theta(:,8)-0.576*180/pi,Pattern,'color',Color,'LineWidth',1.5,'DisplayName',Name);
grid on;
xlabel('Gait (%)');
ylabel('Angle (Degree)');
title(['Ankle']);

hold on;
subplot(3,3,ii+3)
plot(linspace(0,100,EndNum),Theta(:,6)-Theta(:,4),Pattern,'color',Color,'LineWidth',1.5,'DisplayName',Name);
% plot(t(StanceStartNum:SwingEndNum),Theta(:,6)-Theta(:,4),Pattern,'color',Color,'LineWidth',1.5,'DisplayName',Name);
grid on;
xlabel('Gait (%)');
ylabel('Angle (Degree)');
title(['Knee']);

hold on;
subplot(3,3,ii+6)
plot(linspace(0,100,EndNum),Theta(:,2)-Theta(:,4),Pattern,'color',Color,'LineWidth',1.5,'DisplayName',Name);
% plot(t(StanceStartNum:SwingEndNum),Theta(:,2)-Theta(:,4),Pattern,'color',Color,'LineWidth',1.5,'DisplayName',Name);
grid on;
xlabel('Gait (%)');
ylabel('Angle (Degree)');
title(['Hip']);

if ii == 1
    load('Gait_001U1309U14.mat');Color = [1 0.5 0];Pattern = '-'; 
elseif ii == 2
    load('Gait_001U1308U14.mat');Color = [1 0.5 0];Pattern = '-'; 
elseif ii == 3
    load('Gait_001U1307U14.mat');Color = [1 0.5 0];Pattern = '-'; 
end
StanceStartNum = SgStartNum(4,1);
SwingEndNum = SgStartNum(4,2);
EndNum = SwingEndNum-StanceStartNum+1;
Theta = theta(StanceStartNum:SwingEndNum,:)*180/pi;
hold on;
subplot(3,3,ii)
plot(linspace(0,100,EndNum),Theta(:,6)-Theta(:,8)-0.576*180/pi,Pattern,'color',Color,'LineWidth',1.5,'DisplayName',Name);
% plot(t(StanceStartNum:SwingEndNum),Theta(:,6)-Theta(:,8)-0.576*180/pi,Pattern,'color',Color,'LineWidth',1.5,'DisplayName',Name);
grid on;
xlabel('Gait (%)');
ylabel('Angle (Degree)');
title(['Ankle']);

hold on;
subplot(3,3,ii+3)
plot(linspace(0,100,EndNum),Theta(:,6)-Theta(:,4),Pattern,'color',Color,'LineWidth',1.5,'DisplayName',Name);
% plot(t(StanceStartNum:SwingEndNum),Theta(:,6)-Theta(:,4),Pattern,'color',Color,'LineWidth',1.5,'DisplayName',Name);
grid on;
xlabel('Gait (%)');
ylabel('Angle (Degree)');
title(['Knee']);

hold on;
subplot(3,3,ii+6)
plot(linspace(0,100,EndNum),Theta(:,2)-Theta(:,4),Pattern,'color',Color,'LineWidth',1.5,'DisplayName',Name);
% plot(t(StanceStartNum:SwingEndNum),Theta(:,2)-Theta(:,4),Pattern,'color',Color,'LineWidth',1.5,'DisplayName',Name);
grid on;
xlabel('Gait (%)');
ylabel('Angle (Degree)');
title(['Hip']);


% legend('show');
end
clear;
%%
% clear;