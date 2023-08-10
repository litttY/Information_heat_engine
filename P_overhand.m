clc;
clear all;
close all;

T_c = 300;
k = 1;

B = 100;
S = 300000;

N = B.*T_c*k;
eps = 0:10:300000;

K_2 = 2;
K_3 = 3;
K_4 = 4;

P_2_overhead = Information_power_overhead(S./K_2,B,K_2,eps).*K_2;
P_3_overhead = Information_power_overhead(S./K_3,B,K_3,eps).*K_3;
P_4_overhead = Information_power_overhead(S./K_4,B,K_4,eps).*K_4;

factor2 = (eps*K_2)./(N+eps*K_2);
factor3 = (eps*K_3)./(N+eps*K_3);
factor4 = (eps*K_4)./(N+eps*K_4);

p2_overhead = plot(factor2,P_2_overhead,'color',[229/255, 123/255, 31/255],'Linewidth',2);
hold on
% p3 = plot(S,P_3,'color',[0/255, 180/255, 188/255],'Linewidth',2);
% hold on
p3_overhead = plot(factor3,P_3_overhead,'color',[0/255, 180/255, 188/255],'Linewidth',2);
hold on
p4_overhead = plot(factor4,P_4_overhead,'color',[90/255, 149/255, 255/255],'Linewidth',2);

hold on
% xlabel('\fontsize{15}干扰因子 \gamma');
xlabel('\fontsize{15}Interference factor \gamma');
ylabel('\fontsize{15}Information power {\it{P}} (W)');

% ylabel('\fontsize{15}信息功率{\it{P}}(W)');
legend([p2_overhead,p3_overhead,p4_overhead],'\fontsize{11}{\it{K}}=2','\fontsize{11}{\it{K}}=3','\fontsize{11}{\it{K}}=4');
set(gca,'FontSize',13);
ylim([0 13e4])
grid on
box on

