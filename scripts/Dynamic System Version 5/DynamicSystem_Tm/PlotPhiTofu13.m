figure(1);
set(gcf,'Position',[100,0,1000,600]);
StartNum = SgStartNum(1,3);
EndNum = SgStartNum(1,4);

subplot(2,1,1);
plot((phi(SgStartNum(2,3):SgStartNum(4,3))),fun(u(SgStartNum(2,3):SgStartNum(4,3),13)),'--','LineWidth',1.5);
hold on;
scatter((phi(SgStartNum(2,3):5:SgStartNum(3,3))),fun(u(SgStartNum(2,3):5:SgStartNum(3,3),13)),'+','LineWidth',1.5);
hold on;
scatter((phi(SgStartNum(3,3):5:SgStartNum(4,3))),fun(u(SgStartNum(3,3):5:SgStartNum(4,3),13)),'o','LineWidth',1.5);
ylabel('f(u_{13})');
xlabel('\phi (radius)');
title('Relationship of \phi and f(u_{13}) in Stage 2,3');
legend('f(u_13)', 'Stage 2', 'Stage 3');
grid on;

subplot(2,1,2);
plot((phi(SgStartNum(5,3):SgStartNum(1,4))),fun(u(SgStartNum(5,3):SgStartNum(1,4),13)),'--','LineWidth',1.5);
hold on;
scatter((phi(SgStartNum(5,3):5:SgStartNum(6,3))),fun(u(SgStartNum(5,3):5:SgStartNum(6,3),13)),'^','LineWidth',1.5);
hold on;
scatter((phi(SgStartNum(6,3):5:SgStartNum(1,4))),fun(u(SgStartNum(6,3):5:SgStartNum(1,4),13)),'*','LineWidth',1.5);
ylabel('f(u_{13})');
xlabel('\phi (radius)');
title('Relationship of \phi and f(u_{13}) in Stage 5,6');
legend('f(u_13)', 'Stage 5', 'Stage 6');
grid on;
