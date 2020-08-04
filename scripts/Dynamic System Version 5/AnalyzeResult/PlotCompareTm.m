GaitCycleNum = 1;
StartNum = SgStartNum(4,GaitCycleNum);
EndNum = SgStartNum(4,GaitCycleNum+1)-1;
CycleNum = EndNum - StartNum + 1;

figure(1);
set(gcf,'Position',[100,0,700,800]);
% suptitle('\fontsize{12}Compare of Muscle Torque between Normal And Foot Drop Gait with Little u_{13} Input');

seq = [17,18,20];
% seq = 17;
% Color = [0 0.5 1];Pattern = '-'; Name = 'Normal';% normal
Color = [1 0.5 0];Pattern = '-'; Name = 'Foot Drop';% foot drop
% Color = [1 0 0.5];Pattern = '--'; Name = 'Foot Drop with Device'; % foot drop with device

figure(1);
for ii = 1 : length(seq)
    hold on;
    subplot(length(seq),1,ii);
    plot(linspace(0,100,CycleNum),Tm(StartNum:EndNum,seq(ii)),Pattern,'color',Color,'LineWidth',1.5,'DisplayName',Name);
    ylim([0 100]);
    ylabel(['T_m{' num2str(seq(ii)) '}']);
    grid on;
end

clear;
%%
xlabel('Gait (%)');
suptitle('\fontsize{12}Compare of Muscle Torque between Normal, Foot Drop with Little u_{13} Input');
legend('show');