function [simData] = simulateWhisker_PluckRelease(W)

% W.Length = 25;
% W.Diameter = 0.075;
% W.nEl = 25;
% W.E_root = 3000;
% W.E_tip = 30;
% W.fName = 'TestWhisker';

mkdir(W.fName); cd(W.fName);

% fprintf('\n\nElement Aspect Ratio: %1.3f\n\n',W.Length/(W.Diameter*W.nEl));

mesh.AspectRatio = W.Length/(W.D_root*W.nEl);

%define mesh nodes
mesh.Points = [linspace(0,W.Length,W.nEl+1)' zeros(W.nEl+1,2) ];

%define mesh Elements
mesh.Elements = [(1:W.nEl)' (2:W.nEl+1)'];

simData.mesh = mesh;

fileID = fopen([W.fName '.inp'],'w');

fprintf(fileID,'*Heading\n');
fprintf(fileID,'*Preprint, echo=NO, model=NO, history=NO, contact=NO\n');
fprintf(fileID,'*Part, name=Whisker\n');
fprintf(fileID,'*NODE\n');
formatSpec = '%i,\t%2.2e,\t%2.2e,\t%2.2e\n';

%Write Nodes
for i = 1:size(mesh.Points,1)
   line = [i mesh.Points(i,:)];
   fprintf(fileID,formatSpec,line);
end

%Write Elements
fprintf(fileID,'*ELEMENT, TYPE=B31\n');
formatSpec = '%i,\t%i,\t%i\n';

for i = 1:size(mesh.Elements,1)
   line = [i mesh.Elements(i,:)];
   fprintf(fileID,formatSpec,line);
end

%% NEED TO MAKE INDIVIDUAL EL SETS AND MATERIALS

%Write Nodesets
fprintf(fileID,'*Nset, nset=WholeModel, generate\n');
fprintf(fileID,'  1,  %i,   1\n',W.nEl+1);
fprintf(fileID,'*Elset, elset=WholeModel, generate\n');
fprintf(fileID,'  1,  %i,   1\n',W.nEl);

%write element sets
for i = 1:W.nEl
fprintf(fileID,'*Elset, elset=EL_%i\n%i,\n',i,i);
end

fprintf(fileID,'*Orientation, name=Ori-1\n');
fprintf(fileID,'1., 0., 0., 0., 1., 0.\n');
fprintf(fileID,'1, 0.\n');

%write sections
for i = 1:W.nEl
    phi = (i-1)/(W.nEl-1);
fprintf(fileID,'*Beam Section, elset=EL_%i, material=Mat_%i, temperature=GRADIENTS, section=CIRC\n',i,i);
fprintf(fileID,'%1.6f\n',(phi*(W.D_tip - W.D_root) + W.D_root)*0.5);
fprintf(fileID,'0.,0.,-1.\n');
end

fprintf(fileID,'*End Part\n');

fprintf(fileID,'*Assembly, name=Assembly\n');
fprintf(fileID,'*Instance, name=Whisker-1, part=Whisker\n');
fprintf(fileID,'*End Instance\n');
fprintf(fileID,'*Nset, nset=Root, instance=Whisker-1\n');
fprintf(fileID,' 1,\n');
fprintf(fileID,'*Nset, nset=Tip, instance=Whisker-1\n');
fprintf(fileID,' %i,\n',W.nEl+1);
fprintf(fileID,'*Nset, nset=PluckNode, instance=Whisker-1\n');
fprintf(fileID,' %i,\n',W.pluckNode);
fprintf(fileID,'*End Assembly\n');

for i = 1:W.nEl
phi = (i-1)/(W.nEl-1);
rhoE = [0 0.5 1;W.rho_root W.rho_tip W.rho_tip]';
modE = [0 1;W.E_root W.E_tip]';
fprintf(fileID,'*Material, name=Mat_%i\n',i);
% fprintf(fileID,'*Damping, alpha=0.000, beta=0.0001\n');
fprintf(fileID,'*Density\n');
fprintf(fileID,'%2.2e,\n',    interp1(rhoE(:,1),rhoE(:,2),phi));
fprintf(fileID,'*Elastic\n');
fprintf(fileID,'%2.2f, 0.4\n',interp1(modE(:,1),modE(:,2),phi));
end

fprintf(fileID,'*Boundary\n');
fprintf(fileID,'Root, ENCASTRE\n');

fprintf(fileID,'*Step, name=Structural, nlgeom=YES\n');
fprintf(fileID,'*Static\n');
fprintf(fileID,'1., 1., 1e-05, 1.\n');

if W.prescribedDisp==0
fprintf(fileID,'*Cload\n');
fprintf(fileID,'PluckNode, 2, %1.6f\n',W.appliedForce);
fprintf(fileID,'PluckNode, 6, %1.6f\n',W.appliedMoment);
else
fprintf(fileID,'*Boundary\n');
fprintf(fileID,'PluckNode, 2, 2, %1.6f\n',W.prescribedDisp);
end

% fprintf(fileID,'*Field, variable=1\n');
% for i = 1:W.nEl+1
% fprintf(fileID,'Whisker-1.%i, %1.3f\n',i,(i-1)/W.nEl);
% end

fprintf(fileID,'*Restart, write, frequency=0\n');
% fprintf(fileID,'*FILE OUTPUT,NUMBER INTERVAL=');
% fprintf(fileID,'%i\n',simStruct.nWriteFil);
% fprintf(fileID,'*FILE FORMAT, ASCII\n');
% fprintf(fileID,'*NODE FILE\nU\n');
%fprintf(fileID,'*Output, field, variable=PRESELECT\n');
%fprintf(fileID,'*Output, history, variable=PRESELECT\n');
fprintf(fileID,'*End Step\n');

fprintf(fileID,'*Step, name=FreeVibration, nlgeom=YES, inc=10000\n');
fprintf(fileID,'*Dynamic\n');
fprintf(fileID,'1e-4,%1.1e,1e-7,%1.1e\n',W.simTime,W.simDT);

if W.prescribedDisp==0
fprintf(fileID,'*Cload, op=NEW\n');
else
fprintf(fileID,'*Boundary, op=NEW\n');
fprintf(fileID,'Root, ENCASTRE\n');
end

% fprintf(fileID,'*Boundary, op=NEW\n');
% fprintf(fileID,'Root, ENCASTRE\n');

fprintf(fileID,'*Restart, write, frequency=0\n');
fprintf(fileID,'*FILE FORMAT, ASCII\n');
fprintf(fileID,'*NODE FILE\nU, RF\n');

% fprintf(fileID,'*Output, field, variable=PRESELECT, frequency=1
% fprintf(fileID,'*Output, history, variable=PRESELECT, frequency=1
fprintf(fileID,'*End Step\n');


fclose(fileID);

%% Run the simulation
cmd_str = ['abaqus job=', W.fName, ' input=', [W.fName '.inp'] ' interactive'];
% cmd_str = ['abaqus job=', W.fName, ' interactive'];

system(cmd_str);

% set up abaqus2Matlab
dir_path = pwd;
run('Documentation.m');
cd(dir_path);

try
% Rec = Fil2str([W.fName '.fin']); %for a dynamic sim
Rec = Fil2str([W.fName '.fil']);

%extract time vector
out = Rec2000(Rec); 
simData.T = cell2mat(out(:,2));

%extract deformed coordinates
out = Rec101(Rec);
U = stack3D(out(:,1:4));
simData.U = U;

%compute nodal displacements
simData.D = squeeze(sqrt(sum((U).^2,2)));

%extract reaction forces
out = Rec104(Rec);
RF = stack3D(out(:,[1 5:7]));
simData.MZ = squeeze(RF(1,end,:));

catch
    simData.T = []; 
    simData.U = [];
    simData.D = [];
    simData.MZ= [];
end

cd ..

end