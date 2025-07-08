%% Whisker Simulator MODAL COMPARISON PLOT

% Lawrence Smith | lsmith@is.mpg.de

clear; clc; close all

%Whisker Dimensions and Material Properties
W0.Length = 25;                  %[mm] whisker length
W0.D_root = 0.075;               %[mm] root diameter of whisker
W0.D_tip = 0.025;                %[mm] root diameter of whisker

W0.E_root = 3340;                %[MPa] elastic modulus at root
W0.E_tip = 3340;                %[MPa] elastic modulus at tip
W0.rho_root = 1200e-12;          %[Mg/mm^3] whisker density
W0.rho_tip = 1200e-12;          %[Mg/mm^3] whisker density

W0.nEl = 20;                     %[] number of elements in whisker

% alpha = [1.875 4.694 7.885];
% I_whisker = pi*W.D_root^4/64;
% A_whisker = pi*W.D_root^2/4;
% V_whisker = W.Length*A_whisker;
% m_whisker = A_whisker*W.rho_root;
% 
% omega = alpha.^2 * sqrt(W.E_root*I_whisker/(m_whisker*W.Length^4)); %rad/sec
% omega = omega/(2*pi);


%% Simulations
%Simulate a nominal isotropic whisker
W0.fName = 'test_ISO';             %[] analysis name
[simDataISO] = simulateWhiskerModal(W0);
% cmd_rmdir(W.fName);

%% Check against analytical prediction
% fprintf('\n\nAnalytical Prediction = %1.4f Hz\n',omega(1));
% fprintf('FEA Prediction = %1.4f Hz\n',simDataISO.F(1));

%% Reduce the density at the tip by a factor of 10 and re-simulate
W1 = W0;
W1.fName = 'test_lorhotip';             %[] analysis name
W1.E_root = 3340;                %[MPa] elastic modulus at root
W1.E_tip = 3340;                %[MPa] elastic modulus at tip
W1.rho_root = (1-0.8)*1200e-12;          %[Mg/mm^3] whisker density
W1.rho_tip =  (1-0)*1200e-12;          %[Mg/mm^3] whisker density
[simDataLoRhoTip] = simulateWhiskerModal(W1);
simDataFGM = simDataLoRhoTip;

%% Rat
W2 = W0;
W2.fName = 'test_loEbase';             %[] analysis name
W2.E_root = 33.40;                %[MPa] elastic modulus at root
W2.E_tip = 3340;                %[MPa] elastic modulus at tip
W2.rho_root = 1200e-12;          %[Mg/mm^3] whisker density
W2.rho_tip = 1200e-12;          %[Mg/mm^3] whisker density
[simDataLoModRoot] = simulateWhiskerModal(W2);

%% Elephant
W3 = W0;
W3.fName = 'test_loEtip';             %[] analysis name
W3.E_root = 3340;                %[MPa] elastic modulus at root
W3.E_tip = 33.40;                %[MPa] elastic modulus at tip
W3.rho_root = 1200e-12;          %[Mg/mm^3] whisker density
W3.rho_tip = 1200e-12;          %[Mg/mm^3] whisker density
[simDataLoModTip] = simulateWhiskerModal(W3);


%% Compare Nominal With Graded Density

plotClor = brewermap(10,'set1');
clor = bone(36);
clor(end-6:end,:) = [];

A = simDataISO;
B = simDataLoRhoTip;

figure;
set(gcf,'position',[481.8000 40 650 700])
colormap(clor);
axis(axisLim(A.mesh.Points + A.U(:,:,end))+[-1 8 0 2 -1 0])
%clim([min(A.D(:,1)) max(A.D(:,1))]);
scaleFactor = 50;
fmax = max([A.F(4) B.F(4)]);
lilOffset = fmax/20;
plot([0 0],[0 1.25*fmax],'k-','linewidth',1); hold on

mode = 0;

for i=1:1:4

mode = mode+1;

%left side
f1 = A.F(i);
V = A.mesh.Points + A.U(:,:,i)*scaleFactor + f1*[0 1 0];
V(:,1) = -V(:,1);
C = zeros(length(V),1);
patch('Faces',A.mesh.Elements,'Vertices',V,'linewidth',3,...
    'facevertexcdata',C,'edgecolor','interp',...
    'displayname','nonlinear FEA'); hold on
text(-1,f1+lilOffset,sprintf('mode %i: %1.1fHz',mode,f1),'HorizontalAlignment','right','Color',plotClor(1,:),'FontSize',12)
plot(0,f1,'.','Markersize',30,'Color',plotClor(1,:))

%rightSide
f2 = B.F(i);
V = (B.mesh.Points + B.U(:,:,i)*scaleFactor) + f2*[0 1 0];
C = linspace(0.8,-0.8,length(V))';
C(C<0)=0;
patch('Faces',B.mesh.Elements,'Vertices',V,'linewidth',3,...
    'facevertexcdata',C,'edgecolor','interp',...
    'displayname','nonlinear FEA'); hold on
text(1,f2+lilOffset,sprintf('mode %i: %1.1fHz',mode,f2),'HorizontalAlignment','left','Color',plotClor(2,:),'FontSize',12)
plot(0,f2,'.','Markersize',30,'Color',plotClor(2,:))

end

text(-15,1.15*fmax,sprintf('Lowest 4 Modes,\nIsotropic Whisker'),'HorizontalAlignment','center','Color',plotClor(1,:),'FontSize',14,'FontWeight','bold');
text(15,1.15*fmax,sprintf('Lowest 4 Modes,\nGraded Porosity'),'HorizontalAlignment','center','Color',plotClor(2,:),'FontSize',14,'FontWeight','bold');
ylim([0 1.25*fmax]);
c=colorbar('location','eastoutside');
c.Label.String='Porosity %';
set(gca,'fontsize',14);
ylabel('Frequency [Hz]')
grid on

%% Compare Nominal With Soft Root (rat)

plotClor = brewermap(10,'set1');
clor = flipud(summer(36));
clor(1:3,:) = [];

A = simDataISO;
B = simDataLoModRoot;

figure;
set(gcf,'position',[481.8000 40 650 700])
colormap(clor);
axis(axisLim(A.mesh.Points + A.U(:,:,end))+[-1 8 0 2 -1 0])
%clim([min(A.D(:,1)) max(A.D(:,1))]);
scaleFactor = 40;
fmax = max([A.F(4) B.F(4)]);
lilOffset = fmax/20;
plot([0 0],[0 1.25*fmax],'k-','linewidth',1); hold on

mode = 0;

for i=1:1:4

mode = mode+1;

%left side
f1 = A.F(i);
V = A.mesh.Points + A.U(:,:,i)*scaleFactor + f1*[0 1 0];
V(:,1) = -V(:,1);
C = linspace(W0.E_root,W0.E_tip,length(V))';
patch('Faces',A.mesh.Elements,'Vertices',V,'linewidth',3,...
    'facevertexcdata',C,'edgecolor','interp',...
    'displayname','nonlinear FEA'); hold on
text(-1,f1+lilOffset,sprintf('mode %i: %1.1fHz',mode,f1),'HorizontalAlignment','right','Color',plotClor(1,:),'FontSize',12)
plot(0,f1,'.','Markersize',30,'Color',plotClor(1,:))

%rightSide
f2 = B.F(i);
V = (B.mesh.Points + B.U(:,:,i)*scaleFactor) + f2*[0 1 0];
C = linspace(W2.E_root,W2.E_tip,length(V))';
patch('Faces',B.mesh.Elements,'Vertices',V,'linewidth',3,...
    'facevertexcdata',C,'edgecolor','interp',...
    'displayname','nonlinear FEA'); hold on
text(1,f2+lilOffset,sprintf('mode %i: %1.1fHz',mode,f2),'HorizontalAlignment','left','Color',plotClor(2,:),'FontSize',12)
plot(0,f2,'^','Markersize',10,'MarkerFaceColor',plotClor(2,:),'MarkerEdgeColor','none')

end

text(-15,1.15*fmax,sprintf('Lowest 4 Modes,\nIsotropic Whisker'),'HorizontalAlignment','center','Color',plotClor(1,:),'FontSize',14,'FontWeight','bold');
text(15,1.15*fmax,sprintf('Lowest 4 Modes,\nGraded Modulus'),'HorizontalAlignment','center','Color',plotClor(2,:),'FontSize',14,'FontWeight','bold');
ylim([0 1.25*fmax]);
c=colorbar('location','eastoutside');
c.Label.String='Modulus [MPa]';
set(gca,'fontsize',14);
ylabel('Frequency [Hz]')
grid on

%% Compare Nominal With Soft Tip (elephant)

plotClor = brewermap(10,'set1');
clor = flipud(summer(36));
clor(1:3,:) = [];

A = simDataISO;
B = simDataLoModTip;

figure;
set(gcf,'position',[481.8000 40 650 700])
colormap(clor);
axis(axisLim(A.mesh.Points + A.U(:,:,end))+[-1 8 0 2 -1 0])
%clim([min(A.D(:,1)) max(A.D(:,1))]);
scaleFactor = 20;
fmax = max([A.F(4) B.F(4)]);
lilOffset = fmax/20;
plot([0 0],[0 1.25*fmax],'k-','linewidth',1); hold on

mode = 0;

for i=1:1:4

mode = mode+1;

%left side
f1 = A.F(i);
V = A.mesh.Points + A.U(:,:,i)*scaleFactor + f1*[0 1 0];
V(:,1) = -V(:,1);
C = linspace(W0.E_root,W0.E_tip,length(V))';
patch('Faces',A.mesh.Elements,'Vertices',V,'linewidth',3,...
    'facevertexcdata',C,'edgecolor','interp',...
    'displayname','nonlinear FEA'); hold on
text(-1,f1+lilOffset,sprintf('mode %i: %1.1fHz',mode,f1),'HorizontalAlignment','right','Color',plotClor(1,:),'FontSize',12)
plot(0,f1,'.','Markersize',30,'Color',plotClor(1,:))

%rightSide
f2 = B.F(i);
V = (B.mesh.Points + B.U(:,:,i)*scaleFactor) + f2*[0 1 0];
C = linspace(W3.E_root,W3.E_tip,length(V))';
patch('Faces',B.mesh.Elements,'Vertices',V,'linewidth',3,...
    'facevertexcdata',C,'edgecolor','interp',...
    'displayname','nonlinear FEA'); hold on
text(1,f2+lilOffset,sprintf('mode %i: %1.1fHz',mode,f2),'HorizontalAlignment','left','Color',plotClor(2,:),'FontSize',12)
plot(0,f2,'s','Markersize',10,'MarkerFaceColor',plotClor(2,:),'MarkerEdgeColor','none')

end

text(-15,1.15*fmax,sprintf('Lowest 4 Modes,\nIsotropic Whisker'),'HorizontalAlignment','center','Color',plotClor(1,:),'FontSize',14,'FontWeight','bold');
text(15,1.15*fmax,sprintf('Lowest 4 Modes,\nGraded Modulus'),'HorizontalAlignment','center','Color',plotClor(2,:),'FontSize',14,'FontWeight','bold');
ylim([0 1.25*fmax]);
c=colorbar('location','eastoutside');
c.Label.String='Modulus [MPa]';
set(gca,'fontsize',14);
ylabel('Frequency [Hz]')
grid on

