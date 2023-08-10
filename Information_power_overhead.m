function P = Information_power_overhead(S,B,K,eps)
T_h = 320;
T_c = 300;
a=0.9;
% k = 1.38E-23;
k = 1;

N = B.*T_c*k + K*eps;
R = B.*log(1+a*S./N);

P = T_h.*R*k - (1-a).*S;