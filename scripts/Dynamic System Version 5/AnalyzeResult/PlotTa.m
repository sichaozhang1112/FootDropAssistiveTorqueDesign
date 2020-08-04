GaitCycleNum = 1;
StartNum = 1;
EndNum = 2000;
CycleNum = EndNum - StartNum + 1;

figure(1);
set(gcf,'Position',[100,0,1200,900]);
% suptitle('\fontsize{12}Compare of Muscle Torque between Normal And Foot Drop Gait with Little u_{13} Input');


% Color = [0 0.5 1];Pattern = '-'; Name = 'Normal';% normal
% Color = [1 0.5 0];Pattern = '-'; Name = 'Foot Drop';% foot drop
Color = [1 0 0.5];Pattern = '--'; Name = 'Foot Drop with Device'; % foot drop with device

figure(1);
for ii = 1 : 7
    hold on;
    subplot(7,1,ii);
    plot(Ta(StartNum:EndNum,ii),Pattern,'color',Color,'LineWidth',1.5,'DisplayName',Name);
    ylim([-100 100]);
    ylabel(['T_{a' num2str(ii) '}']);
    grid on;
end

clear;
%%
xlabel('Gait (%)');
suptitle('\fontsize{12}Compare of Muscle Torque between Normal, Foot Drop And Foot Drop with Additional Torque');
legend('show');