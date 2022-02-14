function CC = createColourChartFromResponses(Responses)
%Responses must be 24x3;
%CC will be 400x600x3

CC = zeros(400, 600, 3, 'double');
    [rr, cc, ~] = size(CC);
    idx = 1;
    for i=1:100:rr
        for j=1:100:cc
            sx = i; sy = j; ex = sx + 100 - 1; ey = sy + 100 - 1;
            R = Responses(idx, 1); G = Responses(idx, 2); B = Responses(idx, 3);
            CC(sx:ex, sy:ey, 1) = R;
            CC(sx:ex, sy:ey, 2) = G;
            CC(sx:ex, sy:ey, 3) = B;
            idx = idx + 1;
        end
    end


