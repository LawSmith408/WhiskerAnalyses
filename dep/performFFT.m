function [f,M,P] = performFFT(t,S)

n  = length(t);
paddingFactor = 1;
%input data are not necessarily spaced evenly in time; interpolate
t = linspace(t(1),t(end),n);
S = interp1(t,S,t,'spline');

Ts = t(2)-t(1);
y = fft(S,paddingFactor*n);
fs = 1/Ts;                   
f = (0:length(y)-1)*(fs/(paddingFactor*n));    
M = abs(y);
P = M.^2/n; 

% figure
% plot(f,P,'.-','LineWidth',1.25,'MarkerSize',10); hold on
% xlim([0 300])
% xlabel('Frequency (Hz)')
% ylabel('Magnitude')

end