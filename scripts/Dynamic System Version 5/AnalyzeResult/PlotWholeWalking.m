%%
% load('Gait_Normal_ForPlot.mat');

%%
% Color1 = [0 0.5 1];Color2 = [0 0.5 1];Color3 = [0 0.5 1];Color4 = [0 0.5 1];Pattern = '-'; Name = 'Normal';% normal
% Color1 = [1 0.5 0];Color2 = [1 0.5 0];Color3 = [1 0.5 0];Color4 = [1 0 0];Pattern = '-'; Name = 'Foot Drop';% foot drop
% Color1 = [1 0 0.5]; Color2 = [1 0 0.5]; Color3 = [1 0 0.5]; Color4 = [1 0 0.5];Pattern = '--'; Name = 'Foot Drop with Device'; % foot drop with device

%%
GaitCycleNum = 3;
StartNum = 1;
EndNum = 2400;
CycleNum = EndNum - StartNum + 1;

figure(1)
set(gcf,'Position',[100,0,1500,600]);
lin = linspace(0,1,10);
% subplot(2,1,1);
for ii = 1 : 5
if ii == 1
    load('Gait_U_AddAnkleTorque.mat');Color1 = [1 0 0];Color2 = [1 0 0];Color3 = [1 0 0];Color4 = [1 0 0];Pattern = '-'; Name = 'Add Ankle Torque'; % foot drop with device
elseif ii == 2
    load('Gait_U_AddAnkleKneeTorque.mat');Color1 = [0.25 0.75 0];Color2 = [0.25 0.75 0];Color3 = [0.25 0.75 0];Color4 = [0.25 0.75 0];Pattern = '-'; Name = 'Add Ankle-Knee Torque'; % foot drop with device
elseif ii == 3
    load('Gait_U_AddAnkleHipTorque.mat');Color1 = [1 0.75 0];Color2 = [1 0.75 0];Color3 = [1 0.75 0];Color4 = [1 0.75 0];Pattern = '-'; Name = 'Add Ankle-Hip Torque'; % foot drop with device
elseif ii == 4
    load('Gait_U_AddAnkleKneeHipTorque.mat');Color1 = [1 0.5 0];Color2 = [1 0.5 0];Color3 = [1 0.5 0];Color4 = [1 0.5 0];Pattern = '-'; Name = 'Add Ankle-Knee-Hip Torque'; % foot drop with device
elseif ii == 5
    load('Gait_Normal.mat');Color1 = [0 0.5 1];Color2 = [0 0.5 1];Color3 = [0 0.5 1];Color4 = [0 0.5 1];Pattern = '-'; Name = 'Normal';% normal
end
for ii = 1 :200 : EndNum
    scatter(head(ii,1),head(ii,2),'k','LineWidth',1.5);
    hold on;
    scatter(waist(ii,1),waist(ii,2),'k','LineWidth',1.5);
    hold on;
    scatter(hip(ii,1),hip(ii,2),'k','LineWidth',1.5);
    hold on;
    scatter(knee_right(ii,1),knee_right(ii,2),'k','LineWidth',1.5);
    hold on;
    scatter(ankle_right(ii,1),ankle_right(ii,2),'k','LineWidth',1.5);
    hold on;
    scatter(knee_left(ii,1),knee_left(ii,2),'k','LineWidth',1.5);
    hold on;
    scatter(ankle_left(ii,1),ankle_left(ii,2),'k','LineWidth',1.5);
    hold on;
    plot(waist(ii,1)+(head(ii,1)-waist(ii,1))*lin,waist(ii,2)+(head(ii,2)-waist(ii,2))*lin,Pattern,'color',Color1,'LineWidth',1.5);
    hold on;
    plot(hip(ii,1)+(waist(ii,1)-hip(ii,1))*lin,hip(ii,2)+(waist(ii,2)-hip(ii,2))*lin,Pattern,'color',Color1,'LineWidth',1.5);
    hold on;
    plot(knee_right(ii,1)+(hip(ii,1)-knee_right(ii,1))*lin,knee_right(ii,2)+(hip(ii,2)-knee_right(ii,2))*lin,Pattern,'color',Color2,'LineWidth',1.5);
    hold on;
    plot(ankle_right(ii,1)+(knee_right(ii,1)-ankle_right(ii,1))*lin,ankle_right(ii,2)+(knee_right(ii,2)-ankle_right(ii,2))*lin,Pattern,'color',Color2,'LineWidth',1.5);
    hold on;
    plot(toe_right(ii,1)+(ankle_right(ii,1)-toe_right(ii,1))*lin,toe_right(ii,2)+(ankle_right(ii,2)-toe_right(ii,2))*lin,Pattern,'color',Color4,'LineWidth',1.5);
    hold on;
    plot(heel_right(ii,1)+(ankle_right(ii,1)-heel_right(ii,1))*lin,heel_right(ii,2)+(ankle_right(ii,2)-heel_right(ii,2))*lin,Pattern,'color',Color4,'LineWidth',1.5);
    hold on;
    plot(toe_right(ii,1)+(heel_right(ii,1)-toe_right(ii,1))*lin,toe_right(ii,2)+(heel_right(ii,2)-toe_right(ii,2))*lin,Pattern,'color',Color4,'LineWidth',1.5);
    hold on;
    plot(knee_left(ii,1)+(hip(ii,1)-knee_left(ii,1))*lin,knee_left(ii,2)+(hip(ii,2)-knee_left(ii,2))*lin,Pattern,'color',Color3,'LineWidth',1.5);
    hold on;
    plot(ankle_left(ii,1)+(knee_left(ii,1)-ankle_left(ii,1))*lin,ankle_left(ii,2)+(knee_left(ii,2)-ankle_left(ii,2))*lin,Pattern,'color',Color3,'LineWidth',1.5);
    hold on;
    plot(toe_left(ii,1)+(ankle_left(ii,1)-toe_left(ii,1))*lin,toe_left(ii,2)+(ankle_left(ii,2)-toe_left(ii,2))*lin,Pattern,'color',Color3,'LineWidth',1.5);
    hold on;
    plot(heel_left(ii,1)+(ankle_left(ii,1)-heel_left(ii,1))*lin,heel_left(ii,2)+(ankle_left(ii,2)-heel_left(ii,2))*lin,Pattern,'color',Color3,'LineWidth',1.5);
    hold on;
    plot(toe_left(ii,1)+(heel_left(ii,1)-toe_left(ii,1))*lin,toe_left(ii,2)+(heel_left(ii,2)-toe_left(ii,2))*lin,Pattern,'color',Color3,'LineWidth',1.5);
    hold on;
end
end

plot(lin*20,zeros(10,1),'k')
% xlim([0.8 1.8]);
axis equal
axis([7,13,-0.05,1.8]);
% title('\fontsize{15}Stage 3');
xlabel('x (m)');
ylabel('y (m)');