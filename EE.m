clc;
% close all;
% clear all;
m = 1:1:1e5;
B = 100;
S = 3e5;
% S = logspace(1,6);
t = 1;
% t = 0:0.01:10;
Th = 320;
Tc = 300;
a=0.9;
% k = 1.38E-23;
k = 1;
N = B.*Tc*k;
% R = B.*log(1+a*S./N);
% I = R.*t;


Rm = B.*log(1+a*(S./m)./N).*m;
I = Rm*t;
P = Th.*Rm*k - (1-a).*S;
v = 1e0;
Pm = Th.*Rm*k - (1-a).*S;

E = I*Th;
Qs =(1-a)*S.*t;
Qf = I*Tc;

Qm = m.^3;
etam = (E-Qs)./(E+Qf+Qm);
eta = (E-Qs)./(E+Qf);

% figure
semilogx(m,etam,'linewidth',1.5)
xlabel('Number of channels {\it{K}}')
ylabel('Energy efficiency {\eta}')
hold on
box on
grid on
% [hx,line1,line2]=plotyy(m,P,m,etam,'semilogx');
% linel.Marker = '.';
% line2.Marker = '.';
legend('P_K = K','P_K = K^2','P_K = K^3')

