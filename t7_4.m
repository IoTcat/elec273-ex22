
% init
clear
addpath(genpath('./func/'));

% declear const
Radius = sqrt(5);
Width = 2;
Length = 4;

% declear params
N = [100, 1000, 10000, 100000];
R = 5;

% declear var
array_prs = [];

% calculate prs
for i = 1 : numel(N)
    [score, totalTimes, prs] = getDisProb(R, N(i), Radius, Length, Width, false, @normrnd_circle);
    array_prs = [array_prs, prs];
end

disp(array_prs);

plot(N, array_prs);
xlabel('N random shots');
ylabel('Probability');
t_s = sprintf('Scatter plot for N with R=%d.', R);
title(t_s);