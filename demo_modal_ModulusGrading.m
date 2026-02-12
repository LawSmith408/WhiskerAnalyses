%% Whisker Simulator Figure 
%scan over different modulus gradients, bounded by keratin

% Lawrence Smith | lsmith@is.mpg.de

clear; clc; close all
addpath dep

%Whisker Dimensions and Material Properties
W.Length = 25;                  %[mm] whisker length
W.D_root = 0.075;               %[mm] root diameter of whisker
W.E_root = 3340;                %[MPa] elastic modulus at root
W.rho_root = 1200e-12;          %[Mg/mm^3] whisker density
W.rho_tip = 1200e-12;          %[Mg/mm^3] whisker density

W.D_tip = 0.025;                %[mm] root diameter of whisker
W.nEl = 20;                     %[] number of elements in whisker

%Analytical Prediction for First Mode of Uniform Beam
alpha = [1.875 4.694 7.885];
I_whisker = pi*W.D_root^4/64;
A_whisker = pi*W.D_root^2/4;
V_whisker = W.Length*A_whisker;
m_whisker = A_whisker*W.rho_root;

%compute the first three modes of a uniform beam with the same dimensions and root modulus as our whisker
omega = alpha.^2 * sqrt(W.E_root*I_whisker/(m_whisker*W.Length^4)); %rad/sec
omega = omega/(2*pi);

%% Scan

%define a vector of E_root/E_tip
E_tip = [33.4 3340 3340];
E_root= [3340 3340 33.4];
E_ratio = E_tip./E_root;

for i = 1:length(E_ratio)

%Simulate whisker
W.fName = 'temp';             %[] analysis name
W.E_tip = E_tip(i);                 %[MPa] elastic modulus at tip
W.E_root = E_root(i);                %[Mg/mm^3] whisker density
simOut{i} = simulateWhiskerModal(W);

end

%plot the frequencies for each grading ratio
styleVect = {'s-','o--','^-'};

%% Plot the frequencies for different grading ratios

figure('Position', [385 208 570 415]);

clor = autumn(4)*0.95;
for i = 1:length(E_ratio)
    if E_ratio(i)==1
plot(simOut{i}.F(1:5),styleVect{i},'markersize',5,'color',clor(i,:),'displayname',...
    ['E_{tip}/E_{root} = ' sprintf('%1.0e',E_ratio(i))],'linewidth',2); hold on
    else
plot(simOut{i}.F(1:5),styleVect{i},'markersize',5,'color',clor(i,:),'displayname',...
    ['E_{tip}/E_{root} = ' sprintf('%1.0e',E_ratio(i))],'linewidth',2); hold on
    end
end
xlabel('Eigenfrequency number')
ylabel('Eigenfrequency [Hz]')
title('Control over Freq. Response via Modulus Grading');
set(gca,'yscale','log','fontsize',12)
legend('location','northwest');
xticks(1:5)
grid on


