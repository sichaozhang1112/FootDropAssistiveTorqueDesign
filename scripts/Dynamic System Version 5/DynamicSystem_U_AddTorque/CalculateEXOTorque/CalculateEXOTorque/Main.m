%%
load('BodyState_Normal_ID.mat');
load('NeuralState_FD_ID.mat');

for ii = 1 : 6000
    [ Ta(ii,:) ] = NeuroMusculoSkeletal( x(ii,:)',x_dot(ii,:)',y(ii,:)',y_dot(ii,:)',theta(ii,:)',theta_dot(ii,:)' ...
        ,u(ii,:)',v(ii,:)' );
end

figure(1);
for ii = 1 : 7
    subplot(7,1,ii);
    hold on;
    plot(Ta(:,ii));
end
%%
clear all;
load('Gait_Normal_ID');
figure(1);
for ii = 1 : 7
    subplot(7,1,ii);
    hold on;
    plot(Ta(:,ii));
end