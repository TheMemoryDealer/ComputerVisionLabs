function T = procrustes_lecture_fillGaps(x1,x2,w)
%fill missing code from the lecture notes

X1 = w'*x1(:,1);
X2 = w'*x2(:,1);

Y1 = w'*x1(:,2);
Y2 = w'*x2(:,2);

W = sum(w);


C1 = w' * (x1(:,1) .* x2(:,1) + x1(:,2) .* x2(:, 2));
% C1 = w' * (x1(:,1).*w'*x2(:,1) + w'*x1(:,2).*w'*x2(:,2)); %complete this line from lecture notes
C2 = w' * (x1(:,2) .* x2(:,1) - x2(:,2) .* x1(:, 1)); %complete this line from lecture notes

Z = w' * (x2(:,1).^2 + x2(:, 2).^2); %complete this line from lecture notes

M = [X2 -Y2  W   0; Y2  X2  0  W; Z  0 X2  Y2; 0  Z  -Y2  X2];
T = M\[X1;Y1;C1;C2];
% T = [ax ay tx ty];
end

