%% Whisker Simulator Figure
%Perform a dynamic analysis of whisker in free vibration conditions
%following a quasistatic deflection
% Lawrence Smith | lsmith@is.mpg.de

clear; clc; close all
addpath ../dep

Labels  = {sprintf('Adult\nElephant'),'Rat',sprintf('Grey\nSeal'),'Uniform-E'};
Labels2  = {'Adult Elephant','Rat','Grey Seal','Baseline'};

clor = brewermap(length(Labels),'set1');
E_tip   = [0.05 3.96 5.6 3.34]*1e3;
E_root  = [3.34 3.34 3.34 3.34]*1e3;
P_tip   = [0 0 0 0];
P_root  = [0 0 0 0];

PropRatio = E_root./E_tip;

figure
plot([0 1],[E_root(1) E_tip(1)]*1e-3,'linewidth',2,'color',clor(1,:)); hold on
plot([0 1],[E_root(2) E_tip(2)]*1e-3,'linewidth',2,'color',clor(2,:)); hold on
plot([0 1],[E_root(3) E_tip(3)]*1e-3,'linewidth',2,'color',clor(3,:)); hold on
plot([0 1],[E_root(4) E_tip(4)]*1e-3,'k--','linewidth',2); hold on
set(gca,'yscale','log','fontsize',12);
set(gcf,'Position',[229 385 390 277]);
xlabel('Normalized Whisker Length')
ylabel('Elastic Modulus [GPa]')
legend(Labels2)

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

W.simTime = 1.5;
W.simDT = 1e-4;

%% Scan across pluck distance
W.fName = 'temp';             %[] analysis name

Fig = figure('position',[108 301 800 360]);

pluckDist = [1 0.8 0.6];
[Rmat,Cmat] = meshgrid(PropRatio,pluckDist);


FirstMode = [];

for j = 1:length(Labels)

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
    
    if i==1
        plot(f,M,'-','color',clor(j,:),"LineWidth",1.5,'handlevisibility','on',...
            'displayname',Labels{j}); hold on
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

%% Plot Amplitude and Power
figure

subplot(1,2,1)
for i = 1:length(Labels)
plot(PropRatio(i)*[1 1],[min(FirstMode(:,i,2)) max(FirstMode(:,i,2))],'k','linewidth',1.5); hold on
text(PropRatio(i),0.005+max(FirstMode(:,i,2)),Labels{i},'HorizontalAlignment','center','VerticalAlignment','baseline')
end
scatter(Rmat(:),reshape(FirstMode(:,:,2),[],1),50,Cmat(:),"filled",'marker','o','MarkerEdgeColor','k')
set(gca,'xscale','log')
ylabel('f_1 Amplitide at Root')
xlabel('E_{root} / E_{tip}')
set(gca,'fontsize',12)


subplot(1,2,2)
for i = 1:length(Labels)
plot(PropRatio(i)*[1 1],[min(FirstMode(:,i,4)) max(FirstMode(:,i,4))],'k','linewidth',1.5); hold on
text(PropRatio(i),1e-7+max(FirstMode(:,i,4)),Labels{i},'HorizontalAlignment','center','VerticalAlignment','baseline')
end
scatter(Rmat(:),reshape(FirstMode(:,:,4),[],1),50,Cmat(:),"filled",'marker','o','MarkerEdgeColor','k')
set(gca,'xscale','log')
ylabel('Signal Power, f_1 []')
xlabel('E_{root} / E_{tip}')

c=colorbar;
c.Label.String = 'Normalized Pluck Position';
set(gcf,'Position',[185 332 1000 332])
set(gca,'fontsize',12)
colormap(cool)



%% Plot % change in Amplitude and Power!

figure

subplot(1,2,1)
for i = 1:length(Labels)
A = FirstMode(:,i,2);
pctA = (A-min(A))./min(A);
plot(PropRatio(i)*[1 1],[min(pctA) max(pctA)],'k','linewidth',1.5); hold on
scatter(Rmat(:,i),pctA,50,Cmat(:,i),"filled",'marker','o','MarkerEdgeColor','k')
text(PropRatio(i),0.01+max(pctA),Labels{i},'HorizontalAlignment','center','VerticalAlignment','bottom')
end
set(gca,'xscale','log')
ylabel('Pct Change in Signal Amplitude')
xlabel('E_{root} / E_{tip}')
set(gca,'fontsize',12)
xlim([0.1 200])

subplot(1,2,2)
for i = 1:length(Labels)
A = FirstMode(:,i,4);
pctA = (A-min(A))./min(A);
plot(PropRatio(i)*[1 1],[min(pctA) max(pctA)],'k','linewidth',1.5); hold on
scatter(Rmat(:,i),pctA,50,Cmat(:,i),"filled",'marker','o','MarkerEdgeColor','k')
text(PropRatio(i),2+max(pctA),Labels{i},'HorizontalAlignment','center','VerticalAlignment','bottom')
end
set(gca,'xscale','log')
ylabel('Pct change in Signal Power')
xlabel('E_{root} / E_{tip}')
xlim([0.1 200])

c=colorbar;
c.Label.String = 'Normalized Pluck Position';
set(gcf,'Position',[185 332 1000 332])
set(gca,'fontsize',12)
colormap(cool)
