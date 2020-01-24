function [out_img] = ImMultipliedByMatrix(Image,D)
    out_img = zeros(size(Image));
    for i = 1:size(Image, 1)
        for j = 1:size(Image, 2)
            r = Image(i, j, 1);
            g = Image(i, j, 2);
            b =Image(i, j, 3);

            rgb = [r g b];

            rgbout = rgb * D;

            out_img(i,j,:) = rgbout;
        end
    end
end

