
% judge if a position in a rectangle
function res = isInRect(x, y, x_, y_)
    if abs(x_) < x && abs(y_) < y
        res = true;
    else
        res = false;
    end
end