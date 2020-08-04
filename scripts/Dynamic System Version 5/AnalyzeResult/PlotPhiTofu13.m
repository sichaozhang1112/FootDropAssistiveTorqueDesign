figure(1);
set(gcf,'Position',[100,0,1000,600]);
% StartNum = SgStartNum(1,3);
% EndNum = SgStartNum(1,4);

subplot(2,1,1);
plot((phi(SgStartNum(2,7):SgStartNum(4,7))),fun(u(SgStartNum(2,7):SgStartNum(4,7),13)),'--','LineWidth',1.5);
hold on;
scatter((phi(SgStartNum(2,7):5:SgStartNum(3,7))),fun(u(SgStartNum(2,7):5:SgStartNum(3,7),13)),'+','LineWidth',1.5);
hold on;
scatter((phi(SgStartNum(3,7):5:SgStartNum(4,7))),fun(u(SgStartNum(3,7):5:SgStartNum(4,7),13)),'o','LineWidth',1.5);
ylabel('f(u_{13})');
xlabel('\phi (radius)');
title('Relationship of \phi and f(u_{13}) in Stage 2,3');
legend('f(u_13)', 'Stage 2', 'Stage 3');
grid on;

subplot(2,1,2);
plot((phi(SgStartNum(5,7):SgStartNum(1,8))),fun(u(SgStartNum(5,7):SgStartNum(1,8),13)),'--','LineWidth',1.5);
hold on;
scatter((phi(SgStartNum(5,7):5:SgStartNum(6,7))),fun(u(SgStartNum(5,7):5:SgStartNum(6,7),13)),'^','LineWidth',1.5);
hold on;
scatter((phi(SgStartNum(6,7):5:SgStartNum(1,8))),fun(u(SgStartNum(6,7):5:SgStartNum(1,8),13)),'*','LineWidth',1.5);
ylabel('f(u_{13})');
xlabel('\phi (radius)');
title('Relationship of \phi and f(u_{13}) in Stage 5,6');
legend('f(u_13)', 'Stage 5', 'Stage 6');
grid on;

%%
figure(1);
set(gcf,'Position',[100,0,1000,900]);

for ii =1 : 9
figure(1);
subplot(2,1,1);
hold on;
plot(phi(SgStartNum(2,ii): SgStartNum(4,ii)-1),(u(SgStartNum(2,ii): SgStartNum(4,ii)-1,13)),'-','LineWidth',1.5,'DisplayName',['Gait Cycle' num2str(ii)]);
% hold on;
ylabel('f(u_{13})');
% scatter(phi(SgStartNum(3,ii)),(u(SgStartNum(3,ii),13)),'LineWidth',1.5);
grid on;
figure(1);
subplot(2,1,2);
hold on;
plot(phi(SgStartNum(5,ii): SgStartNum(1,ii+1)-1),(u(SgStartNum(5,ii): SgStartNum(1,ii+1)-1,13)),'-','LineWidth',1.5,'DisplayName',['Gait Cycle' num2str(ii)]);
% hold on;
ylabel('f(u_{13})');
% scatter(phi(SgStartNum(6,ii)),(u(SgStartNum(6,ii),13)),'LineWidth',1.5);
grid on;
end
figure(1);
xlabel('\phi (radius)');
legend('show');

