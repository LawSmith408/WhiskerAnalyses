%% Whisker Simulator Figure 5
% Lawrence Smith | lsmith@is.mpg.de

clear; clc; close all
addpath ../dep

% Labels  = {'Uniform-E', sprintf('Adult\nElephant'), };
Labels2  = {'Uniform E','Adult Elephant','Inverted Elephant'};

clor = brewermap(length(Labels2),'set1');
E_tip   = [3.34 0.05 3.34]*1e3;
E_root  = [3.34 3.34 0.05]*1e3;
P_tip   = [0 0 0];
P_root  = [0 0 0];

PropRatio = E_root./E_tip;

% figure
% plot([0 1],[E_root(1) E_tip(1)]*1e-3,'linewidth',2,'color',clor(1,:)); hold on
% plot([0 1],[E_root(2) E_tip(2)]*1e-3,'linewidth',2,'color',clor(2,:)); hold on
% plot([0 1],[E_root(3) E_tip(3)]*1e-3,'linewidth',2,'color',clor(3,:)); hold on
% plot([0 1],[E_root(4) E_tip(4)]*1e-3,'k--','linewidth',2); hold on
% set(gca,'yscale','log','fontsize',12);
% set(gcf,'Position',[229 385 390 277]);
% xlabel('Normalized Whisker Length')
% ylabel('Elastic Modulus [GPa]')
% legend(Labels2)

%Whisker Dimensions and Material Properties
W.Length = 25;                  %[mm] whisker length
W.D_root = 0.075;               %[mm] root diameter of whisker
Rho0= 1200e-12;

W.D_tip = 0.025;                %[mm] root diameter of whisker
W.nEl = 19;                     %[] number of elements in whisker

%Boundary Conditions - NOTE only one of these may be nonzero
W.appliedMoment = 0*1e-5;         %[N*mm] applied moment
W.appliedForce =  0*1e-5;             %[N] vertical force applied
W.prescribedDisp =  0.25;           %[mm] vertical displacement applied

W.simTime = 1.25;
W.simDT = 5e-4;

%% Scan across pluck distance
W.fName = 'fig5_2';             %[] analysis name

Fig = figure('position',[108 301 800 360]);

pluckDist = [1 0.8 0.6];

[Rmat,Cmat] = meshgrid(PropRatio,pluckDist);


FirstMode = [];

for j = 1:length(Labels2)

for i = length(pluckDist):-1:1

    %determine which node to pluck
    W.pluckNode = ceil((W.nEl+1)*pluckDist(i));

    %simulate Graded whisker
    W.rho_root = Rho0*(1-P_root(j));
    W.rho_tip =  Rho0*(1-P_tip(j));
    W.E_root = E_root(j);
    W.E_tip = E_tip(j);

    simDataFGM{i,j} = simulateWhisker_PluckReleaseInterp(W);

    %extract frequency data
    [f,M,P] = performFFT(simDataFGM{i,j}.T,simDataFGM{i,j}.MZ);
    
    simDataFGM{i,j}.fft_f = f;
    simDataFGM{i,j}.fft_M = M;
    
    if i==1
        plot(f,M,'-','color',clor(j,:),"LineWidth",1.5,'handlevisibility','on',...
            'displayname',Labels2{j}); hold on
    else
        plot(f,M,'-','color',clor(j,:),"LineWidth",1.5,'handlevisibility','off'); hold on
    end

    xlim([0 100])
    xlabel('Frequency Content [Hz]');
    ylabel('Signal Magnitude []');
    set(gca,'fontsize',12)
    set(gca,'YScale','log')
    legend('location','northeast')
    drawnow()

    peaksWindow = 1:floor(length(M)/2);
    [peaks,ipeaks] = findpeaks(M(peaksWindow));

    [~,mostLikelyPeak] = max(peaks);

    mostLikelyPeak = 1;

    plot(f(ipeaks),M(ipeaks),'r.','MarkerSize',15,'HandleVisibility','off')
    plot(f(ipeaks(mostLikelyPeak)),M(ipeaks(mostLikelyPeak)),'b.','MarkerSize',20,'HandleVisibility','off')

    FirstMode(i,j,1) = f(ipeaks(mostLikelyPeak));
    FirstMode(i,j,2) = M(ipeaks(mostLikelyPeak));
    FirstMode(i,j,3) = powerbw(P,f,[],6);
    FirstMode(i,j,4) = bandpower(M);

    drawnow()

end

end

clor2 = cool(3);

%% Plot % change in Power!
for i = 1:length(Labels2)

figure
set(gcf,"Position",[308.6000 191 1.0628e+03 548.4000]);

sz_inset = [0.8 0.25];

xSpc_inset = 0;
ySpc_inset = 0.25;
UpperCorner = [0.15 0.7];
timeWindow = [0.025 0.15];
ylimit = 1.7e-5;

axBig = gca;
set(axBig,'visible','off')

text(axBig,0.5,1,Labels2{i}, ...
    'HorizontalAlignment','center','VerticalAlignment','bottom','Units','normalized',...
    'FontSize',16,'fontname','times new roman');

    for j = 1:length(pluckDist)

        cornerPosition = [-(i-1)*xSpc_inset+UpperCorner(1) -(j-1)*ySpc_inset+UpperCorner(2)];

        ax{i,j} = axes('Position',[cornerPosition sz_inset]);

        iStart = find(simDataFGM{j,i}.T>timeWindow(1),1);
        iStop  = find(simDataFGM{j,i}.T>timeWindow(2),1);

        plot(ax{i,j},simDataFGM{j,i}.T(iStart:iStop),simDataFGM{j,i}.MZ(iStart:iStop),'color',clor2(j,:),'linewidth',2);
        ylim(ax{i,j},ylimit*[-1 1])
        set(ax{i,j},'visible','off')

    end

end



% text(axBig,0.1,1,Labels2{2}, ...
%     'HorizontalAlignment','center','VerticalAlignment','bottom','Units','normalized',...
%     'FontSize',16,'fontname','times new roman');


% %% Plot % change in Power!
% 
% figure
% set(gcf,"Position",[308.6000 191 1.0628e+03 548.4000]);
% 
% sz_inset = [0.3 0.12];
% 
% xSpc_inset = 0.45;
% ySpc_inset = 0.15;
% UpperCorner = [0.65 0.8];
% timeWindow = [0.025 0.15];
% ylimit = 1.7e-5;
% 
% axBig = gca;
% set(axBig,'visible','off')
% 
% for i = 1:length(Labels)
% 
% 
%     for j = 1:length(pluckDist)
% 
%         cornerPosition = [-(i-1)*xSpc_inset+UpperCorner(1) -(j-1)*ySpc_inset+UpperCorner(2)];
% 
%         ax{i,j} = axes('Position',[cornerPosition sz_inset]);
% 
%         iStart = find(simDataFGM{j,i}.T>timeWindow(1),1);
%         iStop  = find(simDataFGM{j,i}.T>timeWindow(2),1);
% 
%         plot(simDataFGM{j,i}.fft_f,simDataFGM{j,i}.fft_M,'-','color',clor(1,:),"LineWidth",1.5,'handlevisibility','off'); hold on
%         xlim(ax{i,j},[20 200])
%         ylim(ax{i,j},[5e-7 5e-3])
%         set(ax{i,j},'yscale','log')
%         set(ax{i,j},'visible','off')
% 
% 
%     end
% 
% end
% 
% text(axBig,0.7,1,Labels2{1}, ...
%     'HorizontalAlignment','center','VerticalAlignment','bottom','Units','normalized',...
%     'FontSize',16,'fontname','times new roman');
% 
% text(axBig,0.1,1,Labels2{2}, ...
%     'HorizontalAlignment','center','VerticalAlignment','bottom','Units','normalized',...
%     'FontSize',16,'fontname','times new roman');

save('Fig5')
