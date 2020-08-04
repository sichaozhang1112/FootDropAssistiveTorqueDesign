%%
% [MatFile,MatFolder] = ...
%     uigetfile('*.mat','Pick the file');
% load([MatFolder filesep MatFile]);

figure(1);

set(gcf,'Position',[100,0,1000,900]);

for ii = 1 : 4

if ii == 1
    load('Gait_U_AddAnkleTorque.mat');Title = 'Add Ankle Torque'; % foot drop with device
elseif ii == 2
    load('Gait_U_AddAnkleKneeTorque.mat');Title = 'Add Ankle-Knee Torque';
elseif ii == 3
    load('Gait_U_AddAnkleHipTorque.mat');Title = 'Add Ankle-Hip Torque';
elseif ii == 4
    load('Gait_U_AddAnkleKneeHipTorque.mat');Title = 'Add Ankle-Knee-Hip Torque';
end

subplot(4,1,ii);

GroundPosition = 0;

StartNum = SgStartNum(1,2);
EndNum = SgStartNum(1,4);
StepNum = EndNum - StartNum + 1;

lf(1) = 0.08; lf(2) = 0.12; lf(3) = 0.10;
Alpha(1) = 1.22; Alpha(2) = 2.44;

heel_right(:,1) = x(:,8) - lf(2)*cos(Alpha(1)-theta(:,8));
heel_right(:,2) = y(:,8) - lf(2)*sin(Alpha(1)-theta(:,8));

heel_left(:,1) = x(:,7) - lf(2)*cos(Alpha(1)-theta(:,7));
heel_left(:,2) = y(:,7) - lf(2)*sin(Alpha(1)-theta(:,7));

toe_right(:,1) = x(:,8) + lf(3)*cos(Alpha(2)+theta(:,8)-pi);
toe_right(:,2) = y(:,8) - lf(3)*sin(Alpha(2)+theta(:,8)-pi);

toe_left(:,1) = x(:,7) + lf(3)*cos(Alpha(2)+theta(:,7)-pi);
toe_left(:,2) = y(:,7) - lf(3)*sin(Alpha(2)+theta(:,7)-pi);

for ii = StartNum : 1 : EndNum
    if (toe_right(ii,2)>GroundPosition) && (heel_right(ii,2)>GroundPosition)
        StanceSeq(ii-StartNum+1) = 4;
%         scatter(ii,4,'m','+');
    elseif (toe_right(ii,2)<=GroundPosition) && (heel_right(ii,2)>GroundPosition)
        StanceSeq(ii-StartNum+1) = 3;
%         scatter(ii,3,'k','^');
    elseif (toe_right(ii,2)<=GroundPosition) && (heel_right(ii,2)<=GroundPosition)
        StanceSeq(ii-StartNum+1) = 2;
%         scatter(ii,2,'b','d');
    elseif (toe_right(ii,2)>GroundPosition) && (heel_right(ii,2)<=GroundPosition)
        StanceSeq(ii-StartNum+1) = 1;
%         scatter(ii,1,'r','o');
    end
end

figure(1);
plot(linspace(0,200,StepNum),StanceSeq,'--','LineWidth',2);
hold on;
for ii = StartNum : 15 : EndNum
    if StanceSeq(ii-StartNum+1) == 2
        scatter((ii-StartNum)*200/(EndNum-StartNum),2,'b','d','DisplayName','Flat Foot','LineWidth',1.5);
    elseif StanceSeq(ii-StartNum+1) == 3
        scatter((ii-StartNum)*200/(EndNum-StartNum),3,'k','^','DisplayName','Heel Off','LineWidth',1.5);
    elseif StanceSeq(ii-StartNum+1) == 4
        scatter((ii-StartNum)*200/(EndNum-StartNum),4,'m','+','DisplayName','Swing','LineWidth',1.5);
    end 
end
hold on;
for ii = StartNum : 1 : EndNum
    if StanceSeq(ii-StartNum+1) == 1
    scatter((ii-StartNum)*200/(EndNum-StartNum),1,'r','o','DisplayName','Heel Strike','LineWidth',1.5);
    end
end
hold off;
% legend('HeelStrike','Flat Foot','Heel Off','Swing')
grid on;
ylim([0 5]);
xlabel('Gait (%)');
title(Title);
clear all;
end

% clear;