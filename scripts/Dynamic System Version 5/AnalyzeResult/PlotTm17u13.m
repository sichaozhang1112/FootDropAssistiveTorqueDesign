GaitCycleNum = 1;
StartNum = 1;
EndNum = 6000;
CycleNum = EndNum - StartNum + 1;

figure(1);
set(gcf,'Position',[100,0,900,600]);
% suptitle('\fontsize{12}Compare of Muscle Torque between Normal And Foot Drop Gait with Little u_{13} Input');

% seq = [1,2,5,6,9,10,13,14,17,18,20];
% seq = 17;
% Color = [0 0.5 1];Pattern = '-'; Name = 'Normal';% normal
% Color = [1 0.5 0];Pattern = '-'; Name = 'Foot Drop';% foot drop
Color = [1 0 0.5];Pattern = '--'; Name = 'Foot Drop with Device'; % foot drop with device

figure(1);

hold on;
subplot(2,1,1);
plot(Tm17(StartNum:EndNum),Pattern,'color',Color,'LineWidth',1.5,'DisplayName',Name);
ylim([0 40]);
ylabel('T_{m17}');
grid on;

hold on;
subplot(2,1,2);
plot(u13(StartNum:EndNum),Pattern,'color',Color,'LineWidth',1.5,'DisplayName',Name);
ylabel('u_{13}');
grid on;

clear;
%%
xlabel('Time Step');
suptitle('\fontsize{12}Compare of Estimated u13 and Tm with Normal and Foot Drop');
legend('show');