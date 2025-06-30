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
W.prescribedDisp = 7;           %[mm] vertical displacement applied at tip

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
colormap(autumn(20));
axis(axisLim(simDataFGM.mesh.Points + simDataFGM.U(:,:,end))+[-1 8 0 2 -1 0])
clim([min(simDataISO.S1(:,end)) max(simDataISO.S1(:,end))]);

%plot and label ISO whisker
V = simDataISO.mesh.Points + simDataISO.U(:,:,end);
patch('Faces',simDataISO.mesh.Elements,'Vertices',V,'linewidth',3,...
    'facevertexcdata',[simDataISO.S1(:,end); 0],'edgecolor','flat',...
    'displayname','nonlinear FEA'); hold on

c=colorbar('location','eastoutside');
c.Label.String='\sigma_{11} [MPa]';
set(gca,'fontsize',14)
xlabel('X Pos. [mm]')
ylabel('Y Pos. [mm]')
grid on
ylim([0 10])
axis equal
ylim([0 10])

% text(V(floor(W.nEl/2),1)-2,V(floor(W.nEl/2),2),'HOM','fontsize',14,'HorizontalAlignment','center')

figure;
set(gcf,'position',[283.8000 272.2000 800 369.6000])
colormap(autumn(20));
axis(axisLim(simDataFGM.mesh.Points + simDataFGM.U(:,:,end))+[-1 8 0 2 -1 0])
clim([min(simDataISO.S1(:,end)) max(simDataISO.S1(:,end))]);

%plot and label FGM whisker
V = simDataFGM.mesh.Points + simDataFGM.U(:,:,end) + [5 0 0];
patch('Faces',simDataFGM.mesh.Elements,'Vertices',V,'linewidth',3,...
    'facevertexcdata',[simDataFGM.S1(:,end); 0],'edgecolor','interp',...
    'displayname','nonlinear FEA'); hold on

% text(V(floor(W.nEl/2),1)+2,V(floor(W.nEl/2),2),'FGM','fontsize',14,'HorizontalAlignment','center')

c=colorbar('location','eastoutside');
c.Label.String='\sigma_{11} [MPa]';
set(gca,'fontsize',14)
xlabel('X Pos. [mm]')
ylabel('Y Pos. [mm]')
grid on
ylim([0 10])
axis equal
ylim([0 10])

% %add inset axis showing modulus variation
% small_ax = axes('position',[0.2 0.56 0.3 0.3]);
% plot((0:W.nEl-1)/W.nEl,simDataISO.S1(:,end),'k--','LineWidth',1.5,'DisplayName','ISO'); hold on
% plot((0:W.nEl-1)/W.nEl,simDataFGM.S1(:,end),'k-','LineWidth',1.5,'DisplayName','FGM'); hold on
% legend('location','northeast')
% xlabel(small_ax,'x/L')
% ylabel(small_ax,'\sigma_{11} [MPa]')
% set(small_ax,'fontsize',12)

% %add inset axis showing modulus variation
% small_ax = axes('position',[0.23 0.56 0.3 0.3]);
% plot([0 1],[1 1],'k--','LineWidth',1.5,'DisplayName','HOM'); hold on
% plot([0 1],[1 1e-2],'k-','LineWidth',1.5,'DisplayName','FGM'); hold on
% legend('location','northeast')
% xlabel(small_ax,'x/L')
% ylabel(small_ax,'E(x)/E_{root}')
% set(small_ax,'YScale','log')
% set(small_ax,'fontsize',12)

