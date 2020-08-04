%%
clear all;
load('Gait_Normal.mat');
GaitCycleNum = 1;
% StartNum = SgStartNum(4,GaitCycleNum);
% EndNum = SgStartNum(4,GaitCycleNum+1)-1;
% CycleNum = EndNum - StartNum + 1;

figure(1)
set(gcf,'Position',[100,10,1200,700]);
lin = linspace(0,1,10);

subplot(1,2,1)
for ii = SgStartNum(4,GaitCycleNum)-2*10 : 10 : SgStartNum(4,GaitCycleNum)
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
    plot(waist(ii,1)+(head(ii,1)-waist(ii,1))*lin,waist(ii,2)+(head(ii,2)-waist(ii,2))*lin,'m','LineWidth',1.5);
    hold on;
    plot(hip(ii,1)+(waist(ii,1)-hip(ii,1))*lin,hip(ii,2)+(waist(ii,2)-hip(ii,2))*lin,'m','LineWidth',1.5);
    hold on;
    plot(knee_right(ii,1)+(hip(ii,1)-knee_right(ii,1))*lin,knee_right(ii,2)+(hip(ii,2)-knee_right(ii,2))*lin,'r','LineWidth',1.5);
    hold on;
    plot(ankle_right(ii,1)+(knee_right(ii,1)-ankle_right(ii,1))*lin,ankle_right(ii,2)+(knee_right(ii,2)-ankle_right(ii,2))*lin,'r','LineWidth',1.5);
    hold on;
    plot(toe_right(ii,1)+(ankle_right(ii,1)-toe_right(ii,1))*lin,toe_right(ii,2)+(ankle_right(ii,2)-toe_right(ii,2))*lin,'r','LineWidth',1.5);
    hold on;
    plot(heel_right(ii,1)+(ankle_right(ii,1)-heel_right(ii,1))*lin,heel_right(ii,2)+(ankle_right(ii,2)-heel_right(ii,2))*lin,'r','LineWidth',1.5);
    hold on;
    plot(toe_right(ii,1)+(heel_right(ii,1)-toe_right(ii,1))*lin,toe_right(ii,2)+(heel_right(ii,2)-toe_right(ii,2))*lin,'r','LineWidth',1.5);
    hold on;
    plot(knee_left(ii,1)+(hip(ii,1)-knee_left(ii,1))*lin,knee_left(ii,2)+(hip(ii,2)-knee_left(ii,2))*lin,'b','LineWidth',1.5);
    hold on;
    plot(ankle_left(ii,1)+(knee_left(ii,1)-ankle_left(ii,1))*lin,ankle_left(ii,2)+(knee_left(ii,2)-ankle_left(ii,2))*lin,'b','LineWidth',1.5);
    hold on;
    plot(toe_left(ii,1)+(ankle_left(ii,1)-toe_left(ii,1))*lin,toe_left(ii,2)+(ankle_left(ii,2)-toe_left(ii,2))*lin,'b','LineWidth',1.5);
    hold on;
    plot(heel_left(ii,1)+(ankle_left(ii,1)-heel_left(ii,1))*lin,heel_left(ii,2)+(ankle_left(ii,2)-heel_left(ii,2))*lin,'b','LineWidth',1.5);
    hold on;
    plot(toe_left(ii,1)+(heel_left(ii,1)-toe_left(ii,1))*lin,toe_left(ii,2)+(heel_left(ii,2)-toe_left(ii,2))*lin,'b','LineWidth',1.5);
    hold on;
end

plot(lin*20,zeros(10,1),'k')
% xlim([0.8 1.8]);
axis equal
axis([7.7,8.7,-0.05,1.8]);
% title('\fontsize{15}Stage 3');
xlabel('x (m)');
ylabel('y (m)');
title('Normal Gait');
set(gca,'FontSize',13.5);

%%
clear all;
load('Gait_001U1309U14.mat');
GaitCycleNum = 1;
% StartNum = SgStartNum(4,GaitCycleNum);
% EndNum = SgStartNum(4,GaitCycleNum+1)-1;
% CycleNum = EndNum - StartNum + 1;

figure(1)
set(gcf,'Position',[100,0,1200,800]);
lin = linspace(0,1,10);

subplot(1,2,2)
for ii = SgStartNum(4,GaitCycleNum)-2*10 : 10 : SgStartNum(4,GaitCycleNum)
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
    plot(waist(ii,1)+(head(ii,1)-waist(ii,1))*lin,waist(ii,2)+(head(ii,2)-waist(ii,2))*lin,'m','LineWidth',1.5);
    hold on;
    plot(hip(ii,1)+(waist(ii,1)-hip(ii,1))*lin,hip(ii,2)+(waist(ii,2)-hip(ii,2))*lin,'m','LineWidth',1.5);
    hold on;
    plot(knee_right(ii,1)+(hip(ii,1)-knee_right(ii,1))*lin,knee_right(ii,2)+(hip(ii,2)-knee_right(ii,2))*lin,'r','LineWidth',1.5);
    hold on;
    plot(ankle_right(ii,1)+(knee_right(ii,1)-ankle_right(ii,1))*lin,ankle_right(ii,2)+(knee_right(ii,2)-ankle_right(ii,2))*lin,'r','LineWidth',1.5);
    hold on;
    plot(toe_right(ii,1)+(ankle_right(ii,1)-toe_right(ii,1))*lin,toe_right(ii,2)+(ankle_right(ii,2)-toe_right(ii,2))*lin,'r','LineWidth',1.5);
    hold on;
    plot(heel_right(ii,1)+(ankle_right(ii,1)-heel_right(ii,1))*lin,heel_right(ii,2)+(ankle_right(ii,2)-heel_right(ii,2))*lin,'r','LineWidth',1.5);
    hold on;
    plot(toe_right(ii,1)+(heel_right(ii,1)-toe_right(ii,1))*lin,toe_right(ii,2)+(heel_right(ii,2)-toe_right(ii,2))*lin,'r','LineWidth',1.5);
    hold on;
    plot(knee_left(ii,1)+(hip(ii,1)-knee_left(ii,1))*lin,knee_left(ii,2)+(hip(ii,2)-knee_left(ii,2))*lin,'b','LineWidth',1.5);
    hold on;
    plot(ankle_left(ii,1)+(knee_left(ii,1)-ankle_left(ii,1))*lin,ankle_left(ii,2)+(knee_left(ii,2)-ankle_left(ii,2))*lin,'b','LineWidth',1.5);
    hold on;
    plot(toe_left(ii,1)+(ankle_left(ii,1)-toe_left(ii,1))*lin,toe_left(ii,2)+(ankle_left(ii,2)-toe_left(ii,2))*lin,'b','LineWidth',1.5);
    hold on;
    plot(heel_left(ii,1)+(ankle_left(ii,1)-heel_left(ii,1))*lin,heel_left(ii,2)+(ankle_left(ii,2)-heel_left(ii,2))*lin,'b','LineWidth',1.5);
    hold on;
    plot(toe_left(ii,1)+(heel_left(ii,1)-toe_left(ii,1))*lin,toe_left(ii,2)+(heel_left(ii,2)-toe_left(ii,2))*lin,'b','LineWidth',1.5);
    hold on;
end

plot(lin*20,zeros(10,1),'k')
% xlim([0.8 1.8]);
axis equal
axis([7.7,8.7,-0.05,1.8]);
% title('\fontsize{15}Stage 3');
xlabel('x (m)');
ylabel('y (m)');
title('Foot Drop Gait with Neurological Disorder');
set(gca,'FontSize',13.5);

print -djpeg -r600 WalkingCompareNormalAndUAtInitialContact