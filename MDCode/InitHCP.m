doPlot = 1;
dt = 15e-15;
TStop = 2000 * dt;
InitDist = 0.0;
Method = 'VE'; % VE -- verlot; FD -- Forward Difference

% Mass0 = 14 * C.am; % Silicon
% Mass1 = 5 * C.am; % Argon
Masses.name = string(zeros(1, 3)); % Create an array for names
Masses.mass = zeros(1, 3); % Create an array for masses
Masses.name(1) = "Silicon";
Masses.mass(1) = 14 * C.am;
Masses.name(2) = "Argon";
Masses.mass(2) = 5 * C.am;
Masses.name(3) = "Boron";
Masses.mass(3) = 10.811 * C.am;

AtomSpacing = 0.5430710e-9;
LJSigma = AtomSpacing / 2^(1 / 6);
LJEpsilon = 1e-21;

PhiCutoff = 3 * AtomSpacing * 1.1;

T = 30;

AddHCPAtomicArray(11, 7, 0, 0, 0, 0, 0, 0, T, 0);

Size = 8*AtomSpacing;
Limits = [-Size +Size -Size +Size]; % square is good
PlDelt = 5*dt;

PlotFile = 'Block.gif';
doPlotImage = 1;
PlotSize = [100, 100, 1049, 1049];

ScaleV = .2e-11;
ScaleF = 20;
