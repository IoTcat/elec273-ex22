% get random position in circle
function [res_x, res_y] = unifrnd_circle(r)

    while true
        res_x = unifrnd(-r, r, 1, 1);
        res_y = unifrnd(-r, r, 1, 1);
        ans_r = sqrt(res_x^2 + res_y^2);
        if ans_r < r
            break
        end
    end

end

