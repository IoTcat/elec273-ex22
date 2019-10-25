
function drawBackGround(Radius, Width, Length)
% prepare figure
hold on
    % - draw circle
d_ang = 0 : pi/100 : 2*pi;
plot(Radius*cos(d_ang), Radius*sin(d_ang), '-');
    % - draw rect
line([
    -Length/2, -Length/2, Length/2, Length/2, -Length/2
], [
    -Width/2, Width/2, Width/2, -Width/2, -Width/2
]);

axis equal
end