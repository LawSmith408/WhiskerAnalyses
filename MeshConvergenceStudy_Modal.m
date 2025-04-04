%% Whisker Simulator Figure 3
% Lawrence Smith | lsmith@is.mpg.de

clear; clc; close all

%Whisker Dimensions and Material Properties
W.Length = 25;                  %[mm] whisker length
W.D_root = 0.075;               %[mm] root diameter of whisker
W.E_root = 3340;                %[MPa] elastic modulus at root
W.E_tip = W.E_root;                 %[MPa] elastic modulus at tip
W.rho0 =   1200e-12;          %[Mg/mm^3] keratin density

W.D_tip = 0.025;                %[mm] root diameter of whisker
W.nEl = 20;                     %[] number of elements in whisker

% alpha = [1.875 4.694 7.885];
% I_whisker = pi*W.D_root^4/64;
% A_whisker = pi*W.D_root^2/4;
% V_whisker = W.Length*A_whisker;
% m_whisker = A_whisker*W.rho_root;
% 
% omega = alpha.^2 * sqrt(W.E_root*I_whisker/(m_whisker*W.Length^4)); %rad/sec
% omega = omega/(2*pi);

%% Scan

%define a vector of E_root/E_tip
Porosity_Root = [80 60 40 20 0]/100;
Porosity_Tip  = [0  0  0  0  0]/100;

nElV = [4 8 12 16 20 24 28 32];

for i = 1:length(nElV)

%Simulate whisker
W.fName = 'scan01';             %[] analysis name
W.rho_tip = W.rho0*(1-0);                %[Mg/mm^3] whisker density
W.rho_root= W.rho0*(1-0);
W.nEl = nElV(i);
simOut{i} = simulateWhiskerModal(W);

end

% %% Check against analytical prediction
% fprintf('\n\nAnalytical Prediction = %1.4f Hz\n',omega(1));
% fprintf('FEA Prediction = %1.4f Hz\n',simOut{3}.F(1));

%% Plot the frequencies for different grading ratios

Fs = [];
for i=1:length(nElV)
    Fs(i,:) = simOut{i}.F(1:4)';
end

figure('Position', [385 208 570 415]);

clor = brewermap(7,'GnBu');
clor(1:2,:) = [];

for i = 1:4

    plot(nElV,Fs(:,i),'s-','markersize',5,'color',clor(i,:),'displayname',...
    sprintf('f_%i',i),'linewidth',2); hold on

end
xlabel('# of Elements')
ylabel('Predicted Eigenfrequency [Hz]')
set(gca,'yscale','log','fontsize',12)
legend('location','southeast');
grid on

%% 
figure('Position', [385 208 570 415]);
for i = 1:4
    plot(nElV,Fs(:,i)./Fs(end,i),'s-','markersize',5,'color',clor(i,:),'displayname',...
    sprintf('f_%i',i),'linewidth',2); hold on
end
xlabel('# of Elements')
ylabel('Normalized Eigenfrequency []')
set(gca,'fontsize',12)
% legend('location','southeast');
grid on

%%
figure('Position', [385 208 570 415]);

clor = brewermap(7,'GnBu');
clor(1:2,:) = [];

for i = 1:4
    plot(nElV,Fs(:,i),'s-','markersize',5,'color',clor(i,:),'displayname',...
    sprintf('f_%i',i),'linewidth',2); hold on
end
xlabel('# of Elements')
ylabel('Predicted Eigenfrequency [Hz]')
set(gca,'yscale','log','fontsize',12)
legend('location','southwest');
grid on
ylim([4 1000])
xlim([4 32])

ax = axes('Position',[0.5 0.22 0.30 0.21]);

for i = 1:4
    plot(nElV,Fs(:,i)./Fs(end,i),'s-','markersize',5,'color',clor(i,:),'displayname',...
    sprintf('f_%i',i),'linewidth',2); hold on
end
% rectangle('Position',[4 0.95 16 0.1],'FaceColor',[1 0 0 0.2],'EdgeColor','none')
xlabel('# of Elements')
ylabel('f/f_{nEl=32}')
set(gca,'fontsize',9)
xlim([4 32])
% legend('location','southeast');
grid on
ylim([0.8 1.1])