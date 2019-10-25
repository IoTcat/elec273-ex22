function res = getDivByPos(Length, Width, x, y)

    ux=Length/4;
    uy=Width/2;
    
    x = x + Length/2;
    y = y + Width/2;
    
    px = ceil(x/ux);
    py = floor(y/uy);
    
    res = px + py*4;
end