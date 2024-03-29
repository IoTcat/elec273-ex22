% compute distributation
function [score, totalTimes, prs, d_rx, d_bo] = getDisProb(R, N, Radius, Length, Width, isPlot, disMethod, goalkeepMethod)
score = 0;
totalTimes = 0;
for m = 1 : R
    for n = 1 : N
        [x, y] = disMethod(Radius);
        totalTimes = totalTimes + 1;
        if isInRect(Length/2, Width/2, x, y) && (nargin<8 || ~isGoalKept(Length, Width, x, y, goalkeepMethod))
            score = score + 1;
            if isPlot
                d_rx = plot(x, y, 'rx');
            end
        else
            if isPlot
                d_bo = plot(x, y, 'bo');
            end
        end
    end
    prs = score / totalTimes;
end
