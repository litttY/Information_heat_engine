clc;
close all;
clear all;

B = 100;
T_h = 320;
T_c = 300;
a=0.9;
% S = 10000;
% S = 0:1:1000000;
% B = 0:1:1000;
S_1 = 100000;
S_2 = 200000;
S_3 = 300000;
K = 1:1:100;
P_1 = Information_power(S_1./K,B).*K;
P_2 = Information_power(S_2./K,B).*K;
P_3 = Information_power(S_3./K,B).*K;
P_1_max = B*T_h*a*S_1/(B.*T_c) - (1 - a)*S_1;
P_2_max = B*T_h*a*S_2/(B.*T_c) - (1 - a)*S_2;
P_3_max = B*T_h*a*S_3/(B.*T_c) - (1 - a)*S_3;
p1 = plot(K,P_1,'color',[90/255, 149/255, 255/255],'Linewidth',2);
hold on
p2 = plot(K,P_2,'color',[229/255, 123/255, 31/255],'Linewidth',2);
hold on
p3 = plot(K,P_3,'color',[0/255, 180/255, 188/255],'Linewidth',2);
hold on
l1 = plot([0,max(K)],[P_1_max,P_1_max],'--','color',[90/255, 149/255, 255/255],'Linewidth',2);
hold on
l2 = plot([0,max(K)],[P_2_max,P_2_max],'--','color',[229/255, 123/255, 31/255],'Linewidth',2);
hold on
l3 = plot([0,max(K)],[P_3_max,P_3_max],'--','color',[0/255, 180/255, 188/255],'Linewidth',2);

ylim([0 4E+5])
% xlabel('\fontsize{15}信道数{\it{K}}');
xlabel('\fontsize{15}Number of channel {\it{K}}');
% ylabel('\fontsize{15}信息功率{\it{P}}(W)');
ylabel('\fontsize{15}Information power {\it{P}}(W)');
legend([p1,p2,p3,l1,l2,l3],'\fontsize{13}{\it{S}}=1x10^{5}','\fontsize{13}{\it{S}}=2x10^{5}','\fontsize{13}{\it{S}}=3x10^{5}','\fontsize{13}{\it{P}}^{max}_{total}({\it{S}}=1x10^{5})','\fontsize{13}{\it{P}}^{max}_{total}({\it{S}}=2x10^{5})','\fontsize{13}{\it{P}}^{max}_{total}({\it{S}}=3x10^{5})','location','North','NumColumns',2);
set(gca,'FontSize',13);
grid on
box on