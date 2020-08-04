%%
% load('Gait_Normal_ForPlot.mat');

GaitCycleNum = 3;
StartNum = SgStartNum(4,GaitCycleNum);
EndNum = SgStartNum(4,GaitCycleNum+1)-1;
CycleNum = EndNum - StartNum + 1;

%%
figure(1);
set(gcf,'Position',[100,0,700,900]);
suptitle('\fontsize{12}Body State \theta (radius)');

for ii = 1 : 8
    subplot(8,1,ii);
    plot(linspace(0,100,CycleNum),theta(StartNum:EndNum,ii),'LineWidth',1.5);
    ylabel(['\theta_{' num2str(ii) '}']);
    grid on;
end
xlabel('Gait (%)');

%%
figure(2);
set(gcf,'Position',[100,0,700,900]);
% suptitle('\fontsize{12}Neural State u');

seq = [1,2,5,6,9,10,13,14];
for ii = 1 : 4
    subplot(4,1,ii);
    plot(linspace(0,100,CycleNum),u(StartNum:EndNum,seq(2*ii-1)),'color',[0 0.4470 0.7410],'LineWidth',1.5);
    hold on;
    plot(linspace(0,100,CycleNum),u(StartNum:EndNum,seq(2*ii)),'--','color',[0 0.4470 0.7410],'LineWidth',1.5);
    ylabel(['u_{' num2str(seq(2*ii-1)) '}, ' 'u_{' num2str(seq(2*ii)) '}']);
    grid on;
end
subplot(4,1,1);title('trunk oscillator');
subplot(4,1,2);title('hip oscillator');
subplot(4,1,3);title('knee oscillator');
subplot(4,1,4);title('ankle oscillator');
figure(2);
xlabel('Gait (%)');

%%
figure(3);
set(gcf,'Position',[100,0,1200,900]);
suptitle('\fontsize{12}Muscle Torque Components T_{mr} (Nm) and T_{mi} (Nm)');
seq = [1,2,5,6,9,10,13,14,17,18,20];

for ii = 1 : length(seq)
    subplot(length(seq),2,2*ii-1);
    plot(linspace(0,100,CycleNum),Tmr(StartNum:EndNum,seq(ii)),'LineWidth',1.5);
    ylabel(['T_{mr' num2str(seq(ii)) '}']);
    grid on;
    ylim([0 150]);
    subplot(length(seq),2,2*ii);
    plot(linspace(0,100,CycleNum),Tmi(StartNum:EndNum,seq(ii)),'LineWidth',1.5);
    ylabel(['T_{mi' num2str(seq(ii)) '}']);
    grid on;
    ylim([0 150]);
end

% subplot(length(seq),2,1);title('\fontsize{12}Muscle Torque T_{mr}(N)');
% subplot(length(seq),2,2);title('\fontsize{12}Muscle Torque T_{mi}(N)');
subplot(length(seq),2,2*length(seq)-1);xlabel('Gait (%)');
subplot(length(seq),2,2*length(seq));xlabel('Gait (%)');

%%
figure(4);
set(gcf,'Position',[100,0,700,900]);

seq = [1,2,5,6,9,10,13,14,17,18,20];
suptitle('\fontsize{12}Muscle Torque T_{m} (Nm)');
for ii = 1 : length(seq)
    subplot(length(seq),1,ii);
    plot(linspace(0,100,CycleNum),Tm(StartNum:EndNum,seq(ii)),'LineWidth',1.5);
    ylabel(['T_{m' num2str(seq(ii)) '}']);
    grid on;
    ylim([0 150]);
end
xlabel('Gait (%)');

%%
figure(5);
set(gcf,'Position',[100,0,1200,900]);

suptitle('\fontsize{12}Passive Torque T_{p} (Nm) and Active Torque T_{a} (Nm)');
for ii = 1 : 7
    subplot(7,2,2*ii-1);
    plot(linspace(0,100,CycleNum),Tp(StartNum:EndNum,ii),'LineWidth',1.5);
    ylabel(['T_{p' num2str(ii) '}']);
    grid on;
    ylim([-120 120]);
    subplot(7,2,2*ii);
    plot(linspace(0,100,CycleNum),Ta(StartNum:EndNum,ii),'LineWidth',1.5);
    ylabel(['T_{a' num2str(ii) '}']);
    grid on;
    ylim([-120 120]);
end
xlabel('Gait (%)');

%%
figure();
set(gcf,'Position',[100,0,700,900]);
suptitle('\fontsize{12}Joint Torque T (Nm)');

for ii = 1 : 7
    subplot(7,1,ii);
    plot(linspace(0,100,CycleNum),Tp(StartNum:EndNum,ii)+Ta(StartNum:EndNum,ii),'LineWidth',1.5);
    ylabel(['T_{' num2str(ii) '}']);
    grid on;
    ylim([-150 150]);
end
xlabel('Gait (%)');

%%
figure(6);
set(gcf,'Position',[100,0,1200,900]);

suptitle('\fontsize{12}Ground Reaction Force F_{gx} (Nm) and F_{gy} (Nm)');
for ii = 1 : 4
    subplot(4,2,2*ii-1);
    plot(linspace(0,100,CycleNum),Fgx(StartNum:EndNum,ii),'LineWidth',1.5);
    ylabel(['F_{gx' num2str(ii) '}']);
    grid on;
    subplot(4,2,2*ii);
    plot(linspace(0,100,CycleNum),Fgy(StartNum:EndNum,ii),'LineWidth',1.5);
    ylabel(['F_{gy' num2str(ii) '}']);
    grid on;
end
xlabel('Gait (%)');
%%
figure();
set(gcf,'Position',[100,0,700,900]);

suptitle('\fontsize{12}Vertical Ground Reaction Force F_{gy} (Nm)');
for ii = 1 : 4
    subplot(4,1,ii);
    plot(linspace(0,100,CycleNum),Fgy(StartNum:EndNum,ii),'LineWidth',1.5);
    ylabel(['F_{gy' num2str(ii) '}']);
    grid on;
end
xlabel('Gait (%)');



