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
W.appliedMoment = 2e-5;         %[N*mm] applied moment at tip
W.appliedForce = 0;             %[N] vertical force applied at tip
W.prescribedDisp = 0;           %[mm] vertical displacement applied at tip

%% Simulations
%Reduce the modulus at the tip by a factor of 100 and simulate
W.E_tip = 33.4;                 %[MPa] elastic modulus at tip
[simDataFGM] = simulateWhiskerStatic(W);

%% Generate Figure
figure;
set(gcf,'position',[283.8000 272.2000 800 369.6000])

clor = flipud(bone(20));
clor(1:5,:) = [];
colormap(flipud(clor));
axis(axisLim(simDataFGM.mesh.Points + simDataFGM.U(:,:,end))+[-1 8 0 2 -1 0])
clim([min(simDataFGM.D(:,end)) max(simDataFGM.D(:,end))]);

%plot and label FGM whisker
V = simDataFGM.mesh.Points + simDataFGM.U(:,:,end);
patch('Faces',simDataFGM.mesh.Elements,'Vertices',V,'linewidth',3,...
    'facevertexcdata',simDataFGM.D(:,end),'edgecolor','interp',...
    'displayname','nonlinear FEA'); hold on

c=colorbar('location','eastoutside');
c.Label.String='Displacement [mm]';
set(gca,'fontsize',14)
xlabel('X Pos. [mm]')
ylabel('Y Pos. [mm]')
grid on
ylim([0 10])
axis equal
