The files in this directory demonstrate how to analyze functionally graded whiskers in various loading scenarios using the nonlinear finite element platforms Abaqus using a streamlined workflow with minimal manual intervention. Running one of the scripts in this folder will trigger a series of automated processes that allow users to reproduce the results presented in this paper, or to analyze similar problems on their own. For academic work, the free but node-limited Abaqus Learning Edition is a viable replacement for a full Abaqus license, provided that mesh sizes are kept small. A full description of these processes is included in Supplemental Information.

Simulation setup (meshing, material property assignment, boundary condition application, etc.) is performed programmatically in MATLAB. 
Simulations are executed automatically at the command line using MATLAB functions, and upon completion results are retrieved and processed. 
Finally, figures are generated from the processed data and prepared for export using MATLAB.

This workflow has the following dependencies:

MATLAB 			https://www.mathworks.com/help/install/ug/install-products-with-internet-connection.html
Abaqus 			https://www.3ds.com/edu/education/students/solutions/abaqus-le
Abaqus2Matlab		https://abaqus2matlab.wixsite.com/abaqus2matlab
GibbonCode		https://www.gibboncode.org/Installation/
nodewiseProcesses 	https://github.com/LawSmith408/nodewiseProcesses


