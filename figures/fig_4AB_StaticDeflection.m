%% Whisker Simulator
%Static Deflection Boundary Conditions with tip load, graded and
%homogeneous modulus 

% Lawrence Smith | lsmith@is.mpg.de

clear; clc; close all

%Analysis Name
W.fName = 'test01';             %[] analysis name

%Whisker Dimensions and Material Properties
W.Length = 25;                  %[mm] whisker length
W.Diameter = 0.075;             %[mm] diameter of whisker
W.E_root = 3340;                %[MPa] elastic modulus at root
W.nEl = 25;                     %[] number of elements in whisker

%Boundary Conditions - NOTE only one of these may be nonzero
W.appliedMoment = 0;         %[N*mm] applied moment at tip
W.appliedForce = 0;             %[N] vertical force applied at tip
W.prescribedDisp = 0;           %[mm] vertical displacement applied at tip

%compute the moment we should apply to get the whisker close to breaking
criticalStress =  2;           %[MPa] tensile strength of whisker
I_whisker = pi*W.Diameter^4/64; %[mm^4] second moment of area
c_whisker = W.Diameter/2;       %[mm] distance from neutral axis to outermost fiber
criticalMoment = criticalStress*I_whisker/c_whisker;
W.appliedMoment = criticalMoment;

%% Simulations
%Simulate a nominal isotropic whisker
W.E_tip = 3340;                 %[MPa] elastic modulus at tip
[simDataISO] = simulateWhiskerStatic(W);
cmd_rmdir(W.fName);

%Reduce the modulus at the tip by a factor of 100 and re-simulate
W.E_tip = 33.4;                 %[MPa] elastic modulus at tip
[simDataFGM] = simulateWhiskerStatic(W);
cmd_rmdir(W.fName);

%% Generate Figure

figure;
set(gcf,'position',[283.8000 272.2000 800 369.6000])
CLOR = flipud(bone(20));
CLOR(1:5,:) = [];
colormap(flipud(CLOR));
axis(axisLim(simDataFGM.mesh.Points + simDataFGM.U(:,:,end))+[-1 8 0 2 -1 0])
clim([min(simDataFGM.D(:,end)) max(simDataFGM.D(:,end))]);

%plot and label ISO whisker
V = simDataISO.mesh.Points + simDataISO.U(:,:,end);
patch('Faces',simDataISO.mesh.Elements,'Vertices',V,'linewidth',3,...
    'facevertexcdata',simDataISO.D(:,end),'edgecolor','interp',...
    'displayname','nonlinear FEA'); hold on

c=colorbar('location','eastoutside');
c.Label.String='Displacement [mm]';
set(gca,'fontsize',14)
xlabel('X Pos. [mm]')
ylabel('Y Pos. [mm]')
grid on
ylim([0 10])
axis equal
ylim([0 10])


% text(V(end,1),V(end,2)+1,'HOM','fontsize',14,'HorizontalAlignment','center')

figure;
set(gcf,'position',[283.8000 272.2000 800 369.6000])

CLOR = flipud(bone(20));
CLOR(1:5,:) = [];
colormap(flipud(CLOR));
axis(axisLim(simDataFGM.mesh.Points + simDataFGM.U(:,:,end))+[-1 8 0 2 -1 0])
clim([min(simDataFGM.D(:,end)) max(simDataFGM.D(:,end))]);


%plot and label FGM whisker
V = simDataFGM.mesh.Points + simDataFGM.U(:,:,end);
patch('Faces',simDataFGM.mesh.Elements,'Vertices',V,'linewidth',3,...
    'facevertexcdata',simDataFGM.D(:,end),'edgecolor','interp',...
    'displayname','nonlinear FEA'); hold on

% text(V(end,1),V(end,2)+1,'FGM','fontsize',14,'HorizontalAlignment','center')

c=colorbar('location','eastoutside');
c.Label.String='Displacement [mm]';
set(gca,'fontsize',14)
xlabel('X Pos. [mm]')
ylabel('Y Pos. [mm]')
grid on
ylim([0 10])
axis equal

% %add inset axis showing modulus variation
% small_ax = axes('position',[0.23 0.56 0.3 0.3]);
% plot([0 1],[1 1],'k--','LineWidth',1.5,'DisplayName','HOM'); hold on
% plot([0 1],[1 1e-2],'k-','LineWidth',1.5,'DisplayName','FGM'); hold on
% legend('location','northeast')
% xlabel(small_ax,'x/L')
% ylabel(small_ax,'E(x)/E_{root}')
% set(small_ax,'YScale','log')
% set(small_ax,'fontsize',12)

