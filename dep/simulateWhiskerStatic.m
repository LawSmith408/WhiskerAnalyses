function [simData] = simulateWhiskerStatic(W)

% W.Length = 25;
% W.Diameter = 0.075;
% W.nEl = 25;
% W.E_root = 3000;
% W.E_tip = 30;
% W.fName = 'TestWhisker';

mkdir(W.fName); cd(W.fName);

% fprintf('\n\nElement Aspect Ratio: %1.3f\n\n',W.Length/(W.Diameter*W.nEl));

mesh.AspectRatio = W.Length/(W.Diameter*W.nEl);

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
formatSpec = '%i,\t%1.2f,\t%1.2f,\t%1.2f\n';

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

%Write Nodesets
fprintf(fileID,'*Nset, nset=WholeModel, generate\n');
fprintf(fileID,'  1,  %i,   1\n',W.nEl+1);
fprintf(fileID,'*Elset, elset=WholeModel, generate\n');
fprintf(fileID,'  1,  %i,   1\n',W.nEl);
fprintf(fileID,'*Orientation, name=Ori-1\n');
fprintf(fileID,'1., 0., 0., 0., 1., 0.\n');
fprintf(fileID,'1, 0.\n');
fprintf(fileID,'*Beam Section, elset=WholeModel, material=LinearElasticGraded, temperature=GRADIENTS, section=CIRC\n');
fprintf(fileID,'%1.5f\n',W.Diameter/2);
fprintf(fileID,'0.,0.,-1.\n');
fprintf(fileID,'*End Part\n');

fprintf(fileID,'*Assembly, name=Assembly\n');
fprintf(fileID,'*Instance, name=Whisker-1, part=Whisker\n');
fprintf(fileID,'*End Instance\n');
fprintf(fileID,'*Nset, nset=Root, instance=Whisker-1\n');
fprintf(fileID,' 1,\n');
fprintf(fileID,'*Nset, nset=Tip, instance=Whisker-1\n');
fprintf(fileID,' %i,\n',W.nEl+1);
fprintf(fileID,'*End Assembly\n');

fprintf(fileID,'*Material, name=LinearElasticGraded\n');
fprintf(fileID,'*Elastic, dependencies=1\n');
fprintf(fileID,'%1.1f, 0.4, ,  0.\n',W.E_root);
fprintf(fileID,'%1.1f, 0.4, ,  1.\n',W.E_tip);

fprintf(fileID,'*Boundary\n');
fprintf(fileID,'Root, ENCASTRE\n');

fprintf(fileID,'*Step, name=Structural, nlgeom=YES\n');
fprintf(fileID,'*Static\n');
fprintf(fileID,'0.1, 1., 1e-05, 0.1\n'); %[initial solver timestep / end time / min timestep / max timestep]

if W.prescribedDisp==0
fprintf(fileID,'*Cload\n');
fprintf(fileID,'Tip, 3, %1.6f\n',W.appliedForce);
fprintf(fileID,'Tip, 6, %1.6f\n',W.appliedMoment);
else
fprintf(fileID,'*Boundary\n');
fprintf(fileID,'Tip, 2, 2, %1.6f\n',W.prescribedDisp);
end

fprintf(fileID,'*Field, variable=1\n');
for i = 1:W.nEl+1
fprintf(fileID,'Whisker-1.%i, %1.3f\n',i,(i-1)/W.nEl);
end


fprintf(fileID,'*Restart, write, frequency=0\n');
% fprintf(fileID,'*FILE OUTPUT,NUMBER INTERVAL=');
% fprintf(fileID,'%i\n',simStruct.nWriteFil);
fprintf(fileID,'*FILE FORMAT, ASCII\n*NODE FILE\nU\n');
fprintf(fileID,'*EL FILE\nS\n');
%fprintf(fileID,'*Output, field, variable=PRESELECT\n');
%fprintf(fileID,'*Output, history, variable=PRESELECT\n');
fprintf(fileID,'*End Step\n');

fclose(fileID);

%% Run the simulation
cmd_str = ['abaqus job=', W.fName, ' input=', [W.fName '.inp'] ' interactive'];
system(cmd_str);

% set up abaqus2Matlab
dir_path = pwd;
run('Documentation.m');
cd(dir_path);

% %convert the fil to a fin if we conduct a dynamic sim
% cmd_str = ['abaqus ascfil job=', W.fName];
% system(cmd_str);

try
% Rec = Fil2str([W.fName '.fin']); %for a dynamic sim
Rec = Fil2str([W.fName '.fil']);

%extract time vector
out = Rec2000(Rec); 
simData.T = cell2mat(out(:,1));

%extract deformed coordinates
out = Rec101(Rec);
U = stack3D(out(:,1:4));
simData.U = U;

%extract element stresses
out = Rec11(Rec);
allStress = reshape(out(:,1),[],W.nEl,length(simData.T));
simData.S1 = squeeze(allStress(1,:,:));

%compute nodal displacements
simData.D = squeeze(sqrt(sum((U).^2,2)));

catch
    simData.T = []; 
    simData.U = [];
    simData.S1 =[];
end

cd ..

end