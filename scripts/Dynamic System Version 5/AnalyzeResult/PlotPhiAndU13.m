% Color = [0 0.5 1];Pattern = '-'; % normal

figure(1);
set(gcf,'Position',[100,0,1000,600]);
StartNum = SgStartNum(1,3);
EndNum = SgStartNum(1,4);

% hold on;
% plot(([SgStartNum(1,3):SgStartNum(2,3)]-StartNum)*100/(EndNum-StartNum),fun(u(SgStartNum(1,3):SgStartNum(2,3),13)),'--','LineWidth',1.5);
% hold on;
% plot(([SgStartNum(2,3):SgStartNum(3,3)]-StartNum)*100/(EndNum-StartNum),fun(u(SgStartNum(2,3):SgStartNum(3,3),13)),'--','LineWidth',1.5);
% hold on;
% plot(([SgStartNum(3,3):SgStartNum(4,3)]-StartNum)*100/(EndNum-StartNum),fun(u(SgStartNum(3,3):SgStartNum(4,3),13)),'--','LineWidth',1.5);
% hold on;
% plot(([SgStartNum(4,3):SgStartNum(5,3)]-StartNum)*100/(EndNum-StartNum),fun(u(SgStartNum(4,3):SgStartNum(5,3),13)),'--','LineWidth',1.5);
% hold on;
% plot(([SgStartNum(5,3):SgStartNum(6,3)]-StartNum)*100/(EndNum-StartNum),fun(u(SgStartNum(5,3):SgStartNum(6,3),13)),'--','LineWidth',1.5);
% hold on;
% plot(([SgStartNum(6,3):SgStartNum(1,4)]-StartNum)*100/(EndNum-StartNum),fun(u(SgStartNum(6,3):SgStartNum(1,4),13)),'--','LineWidth',1.5);

% legend('Stage 1', 'Stage 2', 'Stage 3', 'Stage 4', 'Stage 5', 'Stage 6');
plot(([SgStartNum(1,3):SgStartNum(1,4)]-StartNum)*100/(EndNum-StartNum),fun(u(SgStartNum(1,3):SgStartNum(1,4),13)),'--','LineWidth',1.5,'DisplayName','f(u_{13})');
hold on;
scatter(([SgStartNum(1,3):5:SgStartNum(2,3)]-StartNum)*100/(EndNum-StartNum),fun(u(SgStartNum(1,3):5:SgStartNum(2,3),13)),'d','LineWidth',1.5,'DisplayName','Stage 1');
hold on;
scatter(([SgStartNum(2,3):5:SgStartNum(3,3)]-StartNum)*100/(EndNum-StartNum),fun(u(SgStartNum(2,3):5:SgStartNum(3,3),13)),'+','LineWidth',1.5,'DisplayName','Stage 2');
hold on;
scatter(([SgStartNum(3,3):5:SgStartNum(4,3)]-StartNum)*100/(EndNum-StartNum),fun(u(SgStartNum(3,3):5:SgStartNum(4,3),13)),'o','LineWidth',1.5,'DisplayName','Stage 3');
hold on;
scatter(([SgStartNum(4,3):5:SgStartNum(5,3)]-StartNum)*100/(EndNum-StartNum),fun(u(SgStartNum(4,3):5:SgStartNum(5,3),13)),'x','LineWidth',1.5,'DisplayName','Stage 4');
hold on;
scatter(([SgStartNum(5,3):5:SgStartNum(6,3)]-StartNum)*100/(EndNum-StartNum),fun(u(SgStartNum(5,3):5:SgStartNum(6,3),13)),'^','LineWidth',1.5,'DisplayName','Stage 5');
hold on;
scatter(([SgStartNum(6,3):5:SgStartNum(1,4)]-StartNum)*100/(EndNum-StartNum),fun(u(SgStartNum(6,3):5:SgStartNum(1,4),13)),'*','LineWidth',1.5,'DisplayName','Stage 6');

legend('show');
title('Neural State u_{13} in f(x)');
xlabel('Gait (%)');
ylabel('f(u_{13})');
grid on;

%%
figure(2);
set(gcf,'Position',[100,0,1000,600]);
StartNum = SgStartNum(1,3);
EndNum = SgStartNum(1,4);

plot(([SgStartNum(1,3):SgStartNum(1,4)]-StartNum)*100/(EndNum-StartNum),(phi(SgStartNum(1,3):SgStartNum(1,4))),'--','LineWidth',1.5,'DisplayName','f(u_{13})');
hold on;
scatter(([SgStartNum(1,3):5:SgStartNum(2,3)]-StartNum)*100/(EndNum-StartNum),(phi(SgStartNum(1,3):5:SgStartNum(2,3))),'d','LineWidth',1.5,'DisplayName','Stage 1');
hold on;
scatter(([SgStartNum(2,3):5:SgStartNum(3,3)]-StartNum)*100/(EndNum-StartNum),(phi(SgStartNum(2,3):5:SgStartNum(3,3))),'+','LineWidth',1.5,'DisplayName','Stage 2');
hold on;
scatter(([SgStartNum(3,3):5:SgStartNum(4,3)]-StartNum)*100/(EndNum-StartNum),(phi(SgStartNum(3,3):5:SgStartNum(4,3))),'o','LineWidth',1.5,'DisplayName','Stage 3');
hold on;
scatter(([SgStartNum(4,3):5:SgStartNum(5,3)]-StartNum)*100/(EndNum-StartNum),(phi(SgStartNum(4,3):5:SgStartNum(5,3))),'x','LineWidth',1.5,'DisplayName','Stage 4');
hold on;
scatter(([SgStartNum(5,3):5:SgStartNum(6,3)]-StartNum)*100/(EndNum-StartNum),(phi(SgStartNum(5,3):5:SgStartNum(6,3))),'^','LineWidth',1.5,'DisplayName','Stage 5');
hold on;
scatter(([SgStartNum(6,3):5:SgStartNum(1,4)]-StartNum)*100/(EndNum-StartNum),(phi(SgStartNum(6,3):5:SgStartNum(1,4))),'*','LineWidth',1.5,'DisplayName','Stage 6');

legend('show');
title('Global Angle \phi');
xlabel('Gait (%)');
ylabel('\phi (radius)');
grid on;



