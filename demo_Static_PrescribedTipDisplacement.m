%% Whisker Simulator
%Static Deflection Boundary Conditions with tip load, graded and
%homogeneous modulus 

% Lawrence Smith | lsmith@is.mpg.de

clear; clc; close all
addpath dep

%Analysis Name
W.fName = 'test01';             %[] analysis name

%Whisker Dimensions and Material Properties
W.Length = 25;                  %[mm] whisker length
W.nEl = 25;                     %[] number of elements in whisker

W.D_root = 0.075;             %[mm] diameter of whisker at root
W.D_tip  = 0.075;             %[mm] diameter of whisker at tip

W.E_root = 3340;                %[MPa] elastic modulus at root
W.E_tip = 3340;               %[mm] elastic modulus at tip

%Boundary Conditions - NOTE only one of these may be nonzero
W.appliedMoment = 0;         %[N*mm] applied moment at tip
W.appliedForce = 0;             %[N] vertical force applied at tip
W.prescribedDisp = 7;           %[mm] vertical displacement applied at tip

%% Simulations
%Reduce the modulus at the tip by a factor of 100 and simulate
W.E_tip = 33.4;                 %[MPa] elastic modulus at tip
[simDataFGM] = simulateWhiskerStatic(W);

%% Generate Figure
figure;
set(gcf,'position',[283.8000 272.2000 800 369.6000])
colormap(autumn(20));
axis(axisLim(simDataFGM.mesh.Points + simDataFGM.U(:,:,end))+[-1 8 0 2 -1 0])
clim([min(simDataFGM.S1(:,end)) max(simDataFGM.S1(:,end))]);

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


