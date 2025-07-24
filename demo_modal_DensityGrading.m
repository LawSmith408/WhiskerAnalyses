%% Whisker Simulator Figure 3
% Lawrence Smith | lsmith@is.mpg.de

clear; clc; close all
addpath dep

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

for i = 1:length(Porosity_Tip)

%Simulate whisker
W.fName = 'scan01';             %[] analysis name
W.rho_tip = W.rho0*(1-Porosity_Tip(i));                %[Mg/mm^3] whisker density
W.rho_root= W.rho0*(1-Porosity_Root(i));
simOut{i} = simulateWhiskerModal(W);

end

% %% Check against analytical prediction
% fprintf('\n\nAnalytical Prediction = %1.4f Hz\n',omega(1));
% fprintf('FEA Prediction = %1.4f Hz\n',simOut{3}.F(1));

%% Plot the frequencies for different grading ratios

figure('Position', [385 208 570 415]);

Rho_Ratio = (1-Porosity_Tip)./(1-Porosity_Root);

clor = brewermap(length(simOut)+3,'GnBu');
clor(1:3,:) = [];

for i = 1:2:length(Porosity_Tip)
    if Rho_Ratio(i)==1
plot(simOut{i}.F(1:5),'s--','markersize',5,'color',clor(i,:),'displayname',...
    ['\rho_{tip}/\rho_{root} = ' sprintf('%1.1e',Rho_Ratio(i))],'linewidth',2); hold on
    else
plot(simOut{i}.F(1:5),'s-','markersize',5,'color',clor(i,:),'displayname',...
    ['\rho_{tip}/\rho_{root} = ' sprintf('%1.1e',Rho_Ratio(i))],'linewidth',2); hold on
    end
end
xlabel('Eigenfrequency number []')
ylabel('Eigenfrequency [Hz]')
title('Control over Freq. Response via Density Grading');
set(gca,'yscale','log','fontsize',12)
legend('location','southeast');
grid on

%% material plot
figure

clor = brewermap(length(simOut)+3,'GnBu');
clor(1:3,:) = [];
for i = 1:2:length(Rho_Ratio)
    if Rho_Ratio(i)==1
plot([0 1],[Porosity_Root(i) Porosity_Tip(i)],'s--','markersize',5,'color',clor(i,:),'displayname',...
    ['E_{root}/E_{tip} = ' sprintf('%1e',Rho_Ratio(i))],'linewidth',2); hold on
    else
plot([0 1],[Porosity_Root(i) Porosity_Tip(i)],'s-','markersize',5,'color',clor(i,:),'displayname',...
    ['E_{root}/E_{tip} = ' sprintf('%1e',Rho_Ratio(i))],'linewidth',2); hold on
    end
end
xlabel('Normalized Whisker Length []')
ylabel('Porosity [%]')
title('Porosity Gradients');
set(gca,'fontsize',12)

