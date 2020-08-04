Color = [0 0.5 1];Pattern = '-'; Name = 'Normal';% normal
% Color = [1 0.5 0];Pattern = '-'; Name = 'Foot Drop';% foot drop
% Color = [1 0 0.5];Pattern = '--'; Name = 'Foot Drop with Device'; % foot drop with device

figure(1);
set(gcf,'Position',[100,0,1000,900]);
for ii = 1 : 7
    hold on;
    subplot(7,1,ii);
    hold on;
    plot(TaDiff(:,ii),'LineWidth',1.5,'DisplayName',Name);
    ylim([-50 50]);
    grid on;
    ylabel(['\delta{T}_{a' num2str(ii) '}']);
end
%%
xlabel('Time Step');

% legend('show');

figure(1);
suptitle('\fontsize{12}Torque Differences between Normal and Foot Drop Gait with 0.01u_{13} and 0.9u_{14}');
    