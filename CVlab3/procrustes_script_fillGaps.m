%% Procrustes Analysis
%%
rng('default')
n = 10;  
X = normrnd(0,1,[n 2]);
%%
% Rotate, scale, translate, and add some noise to sample points.
S = [0.5 -sqrt(3)/2; sqrt(3)/2 0.5];
Y = normrnd(0.5*X*S+2,0.05,n,2);
%%
% Conform |Y| to |X| using procrustes analysis.
[d,Z,tr] = procrustes(X,Y); %Matlab built-in procrustes
%%
% Plot the original |X| and |Y| with the transformed |Y| .
plot(X(:,1),X(:,2),'rx',Y(:,1),Y(:,2),'b.',Z(:,1),Z(:,2),'bx');
%% lecture material
w = ones(size(X,1),1);%/size(X,1);
T = procrustes_lecture_fillGaps(X,Y,w); %procrustes algorithm as described in the lecture notes

M = [T(1), -T(2); T(2), T(1)];
t = [T(3); T(4)];

Z_l = (M'*T'*Y + t)'; %complete this line of code, you need to use T in order to transform Y to Z_l

figure
plot(X(:,1),X(:,2),'rx',Y(:,1),Y(:,2),'b.',Z(:,1),Z(:,2),'bx',Z_l(:,1),Z_l(:,2),'gx');