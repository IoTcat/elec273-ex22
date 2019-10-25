
% init
clear
addpath(genpath('./func/'));

% declear const
Radius = sqrt(5);
Width = 2;
Length = 4;

% declear params
N = 1000;
R = [5, 10, 15, 20];

% declear var
array_prs = [];

% calculate prs
for i = 1 : numel(R)
    [score, totalTimes, prs] = getDisProb(R(i), N, Radius, Length, Width, false, @unifrnd_circle);
    array_prs = [array_prs, prs];
end

disp(array_prs);

plot(R, array_prs);
xlabel('R random shots');
ylabel('Probability');
t_s = sprintf('Scatter plot for R with N=%d.', N);
title(t_s);