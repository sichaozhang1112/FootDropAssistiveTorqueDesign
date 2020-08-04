% Color = [0 0.5 1];Pattern = '-'; Name = 'Normal';% normal
Color = [1 0.5 0];Pattern = '-'; Name = 'Foot Drop';% foot drop
% Color = [1 0 0.5];Pattern = '--'; Name = 'Foot Drop with Device'; % foot drop with device

figure(1);
set(gcf,'Position',[100,0,1000,900]);
for ii = 1 : 14
    hold on;
    subplot(7,2,ii);
    hold on;
    plot(u(:,ii),'LineWidth',1.5,'color',Color,'DisplayName',Name);
    grid on;
    ylabel(['u_{' num2str(ii) '}']);
end
%%
subplot(7,2,13);xlabel('Time Step');
subplot(7,2,14);xlabel('Time Step');

legend('show');

figure(1);
suptitle('\fontsize{12}Compare of Neural States between Normal and Foot Drop with 0.01u_{13} and 0.9u_{14}');
    