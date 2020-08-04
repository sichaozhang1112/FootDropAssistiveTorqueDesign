% 
clear all;
% [MatFile,MatFolder] = ...
%     uigetfile('*.mat','Pick the file');
% load([MatFolder filesep MatFile]);
Color1 = 'm';
Color2 = 'r';
Color3 = 'b';
% 1.5
EndNum = 3000;
CurrentFolder = cd;
%%
fid = figure;
hold on
% xlim([0.8 1.8]);

writerObj = VideoWriter('out.avi'); % Name it.
writerObj.FrameRate = 1; % How many frames per second.
open(writerObj); 
lin = linspace(0,1,10);
for ii=1:10:EndNum   
    clf
    % We just use pause but pretend you have some really complicated thing here...
%     pause(0.1);
    figure(fid); % Makes sure you use your desired frame.
    set(gcf,'Position',[100,0,1200,600]);
    plot(lin*20,zeros(10,1),'k')
    hold on
    axis equal
    axis([7,15,-0.05,1.8]);
    ylim([-0.05 1.8]);
    xlim([7 15]);
    xlabel('x (m)');
    ylabel('y (m)');
    lin = linspace(0,1,10);
    for jj = 1 : 4
        if jj == 1
            load('Gait_Normal.mat');
            Color1 = [0 0.5 1];Color2 = [0 0.5 1];Color3 = [0 0.5 1];Color4 = [0 0.5 1];Pattern = '-'; % normal
        elseif jj == 2
            load('Gait_Tm.mat');
            Color1 = [1 0.5 0];Color2 = [1 0.5 0];Color3 = [1 0.5 0];Color4 = [1 0 0];Pattern = '-'; % foot drop
        elseif jj == 3
            load('Gait_Tm_AddTorque.mat');
            Color1 = [1 0 0.5]; Color2 = [1 0 0.5]; Color3 = [1 0 0.5]; Color4 = [1 0 0.5];Pattern = '--'; % foot drop with device
%             elseif jj == 1
%             load('Gait_U_AddAnkleTorque.mat');
%             Color1 = [1 0 0]; Color2 = [1 0 0]; Color3 = [1 0 0]; Color4 = [1 0 0];Pattern = '-'; % foot drop with device
%             elseif jj == 2
%             load('Gait_U_AddAnkleKneeTorque.mat');
%             Color1 = [0 1 0]; Color2 = [0 1 0]; Color3 = [0 1 0]; Color4 = [0 1 0];Pattern = '-'; % foot drop with device
%             elseif jj == 3
%             load('Gait_U_AddAnkleKneeHipTorque.mat');
%             Color1 = [1 0.5 0]; Color2 = [1 0.5 0]; Color3 = [1 0.5 0]; Color4 = [1 0.5 0];Pattern = '-'; % foot drop with device
        end
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
    plot(heel_left(ii,1)+(ankle_left(ii,1)-heel_left(ii,1))*lin,heel_left(ii,2)+(ankle_left(ii,2)-heel_left(ii,2))*lin,'color',Color3,'LineWidth',1.5);
    hold on;
    plot(toe_left(ii,1)+(heel_left(ii,1)-toe_left(ii,1))*lin,toe_left(ii,2)+(heel_left(ii,2)-toe_left(ii,2))*lin,Pattern,'color',Color3,'LineWidth',1.5);
    hold on;
    end
    frame = getframe(gcf); % 'gcf' can handle if you zoom in to take a movie.
    writeVideo(writerObj, frame);
%     end
end
hold off
close(writerObj); % Saves the movie.