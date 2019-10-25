function res = isGoalKept(Length, Width, x, y, goalkeepMethod)
    div = getDivByPos(Length, Width, x, y);
    act = goalkeepMethod();
    
    pattern = [2, 3, 6, 7; 2, 5, 0, 0; 3, 8, 0, 0; 1, 2, 0, 0; 3, 4, 0, 0];
    
    if ismember(div, pattern(act, :))
        res = true;
    else
        res = false;
    end
    
end