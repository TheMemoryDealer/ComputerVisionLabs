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
disp('done it g') % good idea to pop breakpoint here and test
%% Camera Processing Pipeline
% subplot(1,2,1), imshow(RAW)
% subplot(1,2,2), imshow(JPG)
% plot(inputbrightness);
% hold on
% plot(outputbrightness);
disp('done it again g')
D=zeros(3,3);
D = [1/1.2315 0 0; 0 1/1.0384 0; 0 0 1/0.9621];

% My bit
tic
WhitePointCorrected = ImMultipliedByMatrix(RAW,D);
WhitePointCorrectedandCC = ImMultipliedByMatrix(WhitePointCorrected,colourcorrection);
toc

% Michal's bit
tic
WhitePointCorrected = ImMultipliedByMatrix(RAW,D);
WhitePointCorrectedandCC = ImMultipliedByMatrixLOL(WhitePointCorrected,colourcorrection);
toc


JPGnew = interp1(inputbrightness, outputbrightness,WhitePointCorrectedandCC,'pchip'); 
subplot(1,4,1), imshow(RAW)
subplot(1,4,2), imshow(WhitePointCorrected);
subplot(1,4,3), imshow(WhitePointCorrectedandCC);
subplot(1,4,4), imshow(JPGnew);
imshow([RAW WhitePointCorrected WhitePointCorrectedandCC JPGnew])





