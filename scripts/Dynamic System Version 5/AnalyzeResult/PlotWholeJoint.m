%%
figure(1);
set(gcf,'Position',[100,0,1200,900]);
% StanceStartNum = 1;
% SwingEndNum = 3000;
% EndNum = SwingEndNum-StanceStartNum+1;
% Theta = theta(StanceStartNum:SwingEndNum,:)*180/pi;
% Theta = [theta_temp(SwingEndNum+1:EndNum,:);theta_temp(1:SwingStartNum,:);theta_temp(SwingStartNum+1:SwingEndNum,:)];
% Color = [0 0.5 1];Pattern = '-'; Name = 'Normal';% normal
% Color = [1 0.5 0];Pattern = '-'; Name = 'Foot Drop';% foot drop
% Color = [1 0 0];Pattern = ':'; Name = 'Add Ankle Torque'; % foot drop with device
% Color = [0 1 0];Pattern = '--'; Name = 'Add Ankle-Knee Torque'; % foot drop with device
% Color = [1 0.5 0];Pattern = '-.'; Name = 'Add Ankle-Knee-Hip Torque'; % foot drop with device
%%
for ii = 1 : 3 
    
        load('Gait_Normal.mat');Color = [0 0.5 1];Pattern = '-'; Name = 'Normal';% normal
        StanceStartNum = 1;
        SwingEndNum = 3000;
        EndNum = SwingEndNum-StanceStartNum+1;
        Theta = theta(StanceStartNum:SwingEndNum,:)*180/pi;
        hold on;
        subplot(3,3,ii)
        plot(1:3000,Theta(:,6)-Theta(:,8)-0.576*180/pi,Pattern,'color',Color,'LineWidth',2,'DisplayName',Name);
        % plot(t(StanceStartNum:SwingEndNum),Theta(:,6)-Theta(:,8)-0.576*180/pi,Pattern,'color',Color,'LineWidth',1.5,'DisplayName',Name);
        grid on;
        xlabel('Time Step');
        ylabel('Angle (Degree)');
        title(['Ankle']);

        hold on;
        subplot(3,3,ii+3)
        plot(1:3000,Theta(:,6)-Theta(:,4),Pattern,'color',Color,'LineWidth',2,'DisplayName',Name);
        % plot(t(StanceStartNum:SwingEndNum),Theta(:,6)-Theta(:,4),Pattern,'color',Color,'LineWidth',1.5,'DisplayName',Name);
        grid on;
        xlabel('Time Step');
        ylabel('Angle (Degree)');
        title(['Knee']);

        hold on;
        subplot(3,3,ii+6)
        plot(1:3000,Theta(:,2)-Theta(:,4),Pattern,'color',Color,'LineWidth',2,'DisplayName',Name);
        % plot(t(StanceStartNum:SwingEndNum),Theta(:,2)-Theta(:,4),Pattern,'color',Color,'LineWidth',1.5,'DisplayName',Name);
        grid on;
        xlabel('Time Step');
        ylabel('Angle (Degree)');
        title(['Hip']);
        if ii == 1 
            load('Gait_U_AddAnkleTorque.mat');Color = [1 0 0];Pattern = ':'; Name = 'Add Ankle Torque'; % foot drop with device
        elseif ii == 2
            load('Gait_U_AddAnkleKneeTorque.mat');Color = [0 1 0];Pattern = '--'; Name = 'Add Ankle-Knee Torque'; % foot drop with device
        elseif ii == 3
            load('Gait_U_AddAnkleKneeHipTorque.mat');Color = [1 0.5 0];Pattern = '-.'; Name = 'Add Ankle-Knee-Hip Torque'; % foot drop with device
        end
        StanceStartNum = 1;
        SwingEndNum = 3000;
        EndNum = SwingEndNum-StanceStartNum+1;
        Theta = theta(StanceStartNum:SwingEndNum,:)*180/pi;
        
        hold on;
        subplot(3,3,ii)
        plot(1:3000,Theta(:,6)-Theta(:,8)-0.576*180/pi,Pattern,'color',Color,'LineWidth',2,'DisplayName',Name);
        % plot(t(StanceStartNum:SwingEndNum),Theta(:,6)-Theta(:,8)-0.576*180/pi,Pattern,'color',Color,'LineWidth',1.5,'DisplayName',Name);
        grid on;
        xlabel('Time Step');
        ylabel('Angle (Degree)');
        title(['Ankle']);

        hold on;
        subplot(3,3,ii+3)
        plot(1:3000,Theta(:,6)-Theta(:,4),Pattern,'color',Color,'LineWidth',2,'DisplayName',Name);
        % plot(t(StanceStartNum:SwingEndNum),Theta(:,6)-Theta(:,4),Pattern,'color',Color,'LineWidth',1.5,'DisplayName',Name);
        grid on;
        xlabel('Time Step');
        ylabel('Angle (Degree)');
        title(['Knee']);

        hold on;
        subplot(3,3,ii+6)
        plot(1:3000,Theta(:,2)-Theta(:,4),Pattern,'color',Color,'LineWidth',2,'DisplayName',Name);
        % plot(t(StanceStartNum:SwingEndNum),Theta(:,2)-Theta(:,4),Pattern,'color',Color,'LineWidth',1.5,'DisplayName',Name);
        grid on;
        xlabel('Time Step');
        ylabel('Angle (Degree)');
        title(['Hip']);
        legend('show')

end

clear;