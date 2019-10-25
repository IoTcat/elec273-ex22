% get random position in circle
function [res_x, res_y] = normrnd_circle(r)

    ang = 2*pi*rand(1);
    t_r = normrnd(0, r);
    res_x = t_r*cos(ang);
    res_y = t_r*sin(ang);

end
