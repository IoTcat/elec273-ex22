
% init
clear
addpath(genpath('./func/'));

% declear const
Radius = sqrt(5);
Width = 2;
Length = 4;

% params input
N = input("Shots Times: ");
R = input("Repeating Times: ");

% draw background
drawBackGround(Radius, Width, Length);

% calculate prs
[score, totalTimes, prs, d_rx, d_bo] = getDisProb(R, N, Radius, Length, Width, true, @normrnd_circle);

% add legend
legend([d_rx, d_bo], {'scored shot', 'missed shot'});
t_s = sprintf('Scatter plot for N=%d and R=%d. prs=%d%%', N, R, prs*100);
title(t_s);

display(prs);

