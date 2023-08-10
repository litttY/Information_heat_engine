clc;
close all;
clear all;

B = 100;
% S = 10000;
S = 0:1:1000000;
% B = 0:1:1000;
K_1 = 1;
K_2 = 2;
K_3 = 3;
P_1 = Information_power(S./K_1,B).*K_1;
P_2 = Information_power(S./K_2,B).*K_2;
P_3 = Information_power(S./K_3,B).*K_3;
p1 = plot(S,P_1,'color',[90/255, 149/255, 255/255],'Linewidth',2);
hold on
p2 = plot(S,P_2,'color',[229/255, 123/255, 31/255],'Linewidth',2);
hold on
p3 = plot(S,P_3,'color',[0/255, 180/255, 188/255],'Linewidth',2);

% xlabel('\fontsize{15}信号功率{\it{S}}(W)');
xlabel('\fontsize{15}Signal power {\it{S}} (W)');
% ylabel('\fontsize{15}信息功率{\it{P}}(W)');
ylabel('\fontsize{15}Information power {\it{P}} (W)');
legend([p1,p2,p3],'\fontsize{13}{\it{K}}=1','\fontsize{13}{\it{K}}=2','\fontsize{13}{\it{K}}=3','location','NorthWest');
set(gca,'FontSize',13);
grid on
box on