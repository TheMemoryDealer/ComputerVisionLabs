%% CONVOLUTION
img = imread('cameraman.tif');
% imshow(img);
% x = improfile;
% figure; plot(x, 'k');
% h = fspecial('laplacian',0.7);
h = [0 1 0; 1 -4 1; 0 1 0];
img_box = imfilter(img, h);
% subplot(1,2,1), imshow(img)
% subplot(1,2,2), imshow(img_box)

%% Camera Processing Pipeline
% subplot(1,2,1), imshow(RAW)
% subplot(1,2,2), imshow(JPG)
% plot(inputbrightness);
% hold on
% plot(outputbrightness);
D=zeros(3,3);
D = [1/1.2315 0 0; 0 1/1.0384 0; 0 0 1/0.9621];
WhitePointCorrected = ImMultipliedByMatrix(RAW,D);
WhitePointCorrectedandCC = ImMultipliedByMatrix(WhitePointCorrected,colourcorrection);
JPGnew = interp1(inputbrightness, outputbrightness,WhitePointCorrectedandCC,'pchip'); 
% subplot(1,4,1), imshow(RAW)
% subplot(1,4,2), imshow(WhitePointCorrected);
% subplot(1,4,3), imshow(WhitePointCorrectedandCC);
% subplot(1,4,4), imshow(JPGnew);
imshow([RAW WhitePointCorrected WhitePointCorrectedandCC JPGnew])





