for ii = 1 : 9
figure(1);
hold on;
plot(SgStartNum(2,ii): SgStartNum(2,ii+1)-1,fun(u(SgStartNum(2,ii): SgStartNum(2,ii+1)-1,13)),'-','LineWidth',1.5);

figure(2);
hold on;
plot(SgStartNum(2,ii): SgStartNum(2,ii+1)-1,(phi(SgStartNum(2,ii): SgStartNum(2,ii+1)-1)),'-','LineWidth',1.5);
end
%%

StartNum = 1;
EndNum = 6000;

figure(3);
plot(StartNum:EndNum,fun(u(StartNum:EndNum,13)),'-','LineWidth',1.5);
for ii = 1 : 10
    temp = SgStartNum(3,ii);
    hold on;
    scatter(temp,fun(u(temp,13)),'LineWidth',1.5);
    temp = SgStartNum(6,ii);
    hold on;
    scatter(temp,fun(u(temp,13)),'d','LineWidth',1.5);
end

figure(4);
plot(StartNum:EndNum,(phi(StartNum:EndNum)),'-','LineWidth',1.5);
for ii = 1 : 10
    temp = SgStartNum(3,ii);
    hold on;
    scatter(temp,(phi(temp)),'LineWidth',1.5);
    temp = SgStartNum(6,ii);
    hold on;
    scatter(temp,(phi(temp)),'d','LineWidth',1.5);
end

%%
for ii =1 : 9
figure(1);
hold on;
plot(phi(SgStartNum(2,ii): SgStartNum(4,ii)-1),(u(SgStartNum(2,ii): SgStartNum(4,ii)-1,13)),'-','LineWidth',1.5,'DisplayName',num2str(ii));
hold on;
scatter(phi(SgStartNum(3,ii)),(u(SgStartNum(3,ii),13)),'LineWidth',1.5);
figure(2);
hold on;
plot(phi(SgStartNum(5,ii): SgStartNum(1,ii+1)-1),(u(SgStartNum(5,ii): SgStartNum(1,ii+1)-1,13)),'-','LineWidth',1.5,'DisplayName',num2str(ii));
hold on;
scatter(phi(SgStartNum(6,ii)),(u(SgStartNum(6,ii),13)),'LineWidth',1.5);
end
figure(1);
legend('show');
figure(2);
legend('show');

%% phi to u13
for ii = 1 : 5
PHIToU13{ii} = [phi(SgStartNum(ii,7):SgStartNum(ii+1,7)),u(SgStartNum(ii,7):SgStartNum(ii+1,7),13)];
end

PHIToU13{6} = [phi(SgStartNum(6,7):SgStartNum(1,8)-1),u(SgStartNum(6,7):SgStartNum(1,8)-1,13)];
