clc;
close all;
clear all;

B = 100;
% S = 10000;
S = 0:10:500000;
% B = 0:1:1000;

% figure(1)
% N_mc = 1000;
% K_1 = 1;
% K_2 = 2;
% K_3 = 3;
% P_1 = Information_power(S./K_1,B).*K_1;
% P_2 = Information_power(S./K_2,B).*K_2;
% P_3 = Information_power(S./K_3,B).*K_3;
% P_2_overhead = Information_power_overhead(S./K_2,B,K_2,N_mc/K_2).*K_2;
% P_3_overhead = Information_power_overhead(S./K_3,B,K_3,N_mc/K_3).*K_3;
% p1 = plot(S,P_1,'color',[90/255, 149/255, 255/255],'Linewidth',2);
% p1 = plot(S,P_1,'color',[90/255, 149/255, 255/255],'Linewidth',2);
% hold on
% p2 = plot(S,P_2,'color',[229/255, 123/255, 31/255],'Linewidth',2);
% hold on
% p2_overhead = plot(S,P_2_overhead,'--','color',[229/255, 123/255, 31/255],'Linewidth',2);
% hold on
% p3 = plot(S,P_3,'color',[0/255, 180/255, 188/255],'Linewidth',2);
% hold on
% p3_overhead = plot(S,P_3_overhead,'--','color',[0/255, 180/255, 188/255],'Linewidth',2);
% hold on
% % xlabel('\fontsize{15}信号功率{\it{S}}(W)');
% xlabel('\fontsize{15}Signal power {\it{S}}(W)');
% % ylabel('\fontsize{15}信息功率{\it{P}}(W)');
% ylabel('\fontsize{15}Information power {\it{P}}(W)');
% legend([p1,p2,p3,p2_overhead,p3_overhead],'\fontsize{11}{\it{K}}=1（无信道间干扰）','\fontsize{11}{\it{K}}=2（无信道间干扰）','\fontsize{11}{\it{K}}=3（无信道间干扰）','\fontsize{11}{\it{K}}=2（有信道间干扰）','\fontsize{11}{\it{K}}=3（有信道间干扰）','location','NorthWest');
% % legend([p1,p2,p3,p2_overhead,p3_overhead],'\fontsize{11}{\it{K}}=1（Without ICI）','\fontsize{11}{\it{K}}=2（Without ICI）','\fontsize{11}{\it{K}}=3（Without ICI）','\fontsize{11}{\it{K}}=2（With ICI）','\fontsize{11}{\it{K}}=3（With ICI）','location','NorthWest','NumColumns',2);
% ylim([0 18E+4])
% % text(min(xlim)-0.1*max(xlim), max(ylim)+0.05*max(ylim), '\fontsize{15}(a)', 'HorizontalAlignment', 'center');
% set(gca,'FontSize',13);
% grid on
% box on

figure(2)
N_mc = 10000;
K_1 = 1;
K_2 = 2;
K_3 = 3;
P_1 = Information_power(S./K_1,B).*K_1;
P_2 = Information_power(S./K_2,B).*K_2;
P_3 = Information_power(S./K_3,B).*K_3;
P_2_overhead = Information_power_overhead(S./K_2,B,K_2,N_mc/K_2).*K_2;
P_3_overhead = Information_power_overhead(S./K_3,B,K_3,N_mc/K_3).*K_3;
p1 = plot(S,P_1,'color',[90/255, 149/255, 255/255],'Linewidth',2);
hold on
% p2 = plot(S,P_2,'color',[229/255, 123/255, 31/255],'Linewidth',2);
hold on
p2_overhead = plot(S,P_2_overhead,'color',[229/255, 123/255, 31/255],'Linewidth',2);
hold on
% p3 = plot(S,P_3,'color',[0/255, 180/255, 188/255],'Linewidth',2);
hold on
p3_overhead = plot(S,P_3_overhead,'color',[0/255, 180/255, 188/255],'Linewidth',2);
hold on
% xlabel('\fontsize{13}信号功率{\it{S}}(W)');
xlabel('\fontsize{15}Signal power {\it{S}} (W)');
% ylabel('\fontsize{13}信息功率{\it{P}}(W)');
ylabel('\fontsize{15}Information power {\it{P}} (W)');
legend([p1,p2_overhead,p3_overhead],'\fontsize{11}{\it{K}}=1','\fontsize{11}{\it{K}}=2','\fontsize{11}{\it{K}}=3','location','NorthWest');
% legend([p1,p2,p3,p2_overhead,p3_overhead],'\fontsize{11}{\it{K}}=1（Without ICI）','\fontsize{11}{\it{K}}=2（Without ICI）','\fontsize{11}{\it{K}}=3（Without ICI）','\fontsize{11}{\it{K}}=2（With ICI）','\fontsize{11}{\it{K}}=3（With ICI）','location','NorthWest');
% ylim([0 18E+4])
% text(min(xlim)-0.1*max(xlim), max(ylim)+0.05*max(ylim), '\fontsize{15}(b)', 'HorizontalAlignment', 'center');
set(gca,'FontSize',13);
grid on
box on
axes('position',[0.38,0.23,0.15,0.15]);
p1 = plot(S,P_1,'color',[90/255, 149/255, 255/255],'Linewidth',1);
hold on;
p2_overhead = plot(S,P_2_overhead,'color',[229/255, 123/255, 31/255],'Linewidth',1);
p3_overhead = plot(S,P_3_overhead,'color',[0/255, 180/255, 188/255],'Linewidth',1);
xlim([3.8E+4 6.2E+4])
ylim([2E+4 2.8E+4])
set(gca,'FontSize',8);
grid on
box on

% text(min(xlim)-0.1*max(xlim), max(ylim)+0.05*max(ylim), '\fontsize{15}(b)', 'HorizontalAlignment', 'center');
% set(gca,'FontSize',13);
% grid on
% box on
% axes('position',[0.18,0.65,0.15,0.15]);
% p1 = plot(S,P_1,'color',[90/255, 149/255, 255/255],'Linewidth',2);
% hold on
% p2 = plot(S,P_2,'color',[229/255, 123/255, 31/255],'Linewidth',2);
% hold on
% p2_overhead = plot(S,P_2_overhead,'--','color',[229/255, 123/255, 31/255],'Linewidth',2);
% hold on
% p3 = plot(S,P_3,'color',[0/255, 180/255, 188/255],'Linewidth',2);
% hold on
% p3_overhead = plot(S,P_3_overhead,'--','color',[0/255, 180/255, 188/255],'Linewidth',2);
% hold on
% xlim([0E+5 0.3E+5])
% ylim([0E+4 2E+4])
% set(gca,'FontSize',8);
% grid on
% box on

% figure(3)
% N_mc = 40000;
% K_1 = 1;
% K_2 = 2;
% K_3 = 3;
% P_2_overhead = Information_power_overhead(S./K_2,B,K_2,N_mc/K_2).*K_2;
% P_3_overhead = Information_power_overhead(S./K_3,B,K_3,N_mc/K_3).*K_3;
% p1 = plot(S,P_1,'color',[90/255, 149/255, 255/255],'Linewidth',2);
% hold on
% p2 = plot(S,P_2,'color',[229/255, 123/255, 31/255],'Linewidth',2);
% hold on
% p2_overhead = plot(S,P_2_overhead,'--','color',[229/255, 123/255, 31/255],'Linewidth',2);
% hold on
% p3 = plot(S,P_3,'color',[0/255, 180/255, 188/255],'Linewidth',2);
% hold on
% p3_overhead = plot(S,P_3_overhead,'--','color',[0/255, 180/255, 188/255],'Linewidth',2);
% hold on
% % xlabel('\fontsize{15}信号功率{\it{S}}(W)');
% xlabel('\fontsize{15}Signal power {\it{S}}(W)');
% % ylabel('\fontsize{15}信息功率{\it{P}}(W)');
% ylabel('\fontsize{15}Information power {\it{P}}(W)');
% % legend([p1,p2,p3,p2_overhead,p3_overhead],'\fontsize{11}{\it{K}}=1（无信道间干扰）','\fontsize{11}{\it{K}}=2（无信道间干扰）','\fontsize{11}{\it{K}}=3（无信道间干扰）','\fontsize{11}{\it{K}}=2（有信道间干扰）','\fontsize{11}{\it{K}}=3（有信道间干扰）','location','NorthWest','NumColumns',2);
% legend([p1,p2,p3,p2_overhead,p3_overhead],'\fontsize{11}{\it{K}}=1（Without ICI）','\fontsize{11}{\it{K}}=2（Without ICI）','\fontsize{11}{\it{K}}=3（Without ICI）','\fontsize{11}{\it{K}}=2（With ICI）','\fontsize{11}{\it{K}}=3（With ICI）','location','NorthWest');
% ylim([0 18E+4])
% text(min(xlim)-0.1*max(xlim), max(ylim)+0.05*max(ylim), '\fontsize{15}(c)', 'HorizontalAlignment', 'center');
% set(gca,'FontSize',13);
% grid on
% box on