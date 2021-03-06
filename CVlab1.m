%%1.1
plot(A);
hold on
plot(D65);
xlabel('Wavelength')
ylabel('Power')
%% 1.2
x=S(:,[1,2]);
plot(x);
xlabel('Wavelength')
ylabel('Power')
%% 1.3
figure; 
plot(x.*A,'g');
hold on;
plot(x.*D65,'r--');
%% 1.4
plot(R);
hold on
plot(CMF);
%% FINAL 1
subplot(2,2,1)
plot(A);
hold on
plot(D65);
subplot(2,2,2)
plot(x);
subplot(2,2,3)
plot(x.*A,'g');
hold on;
plot(x.*D65,'r--');
subplot(2,2,4)
plot(CMF);
%% 2.1
z=S.*A;
s1 = zeros(size(z,2),3);
for i = 1:size(z,2)
    s1(i,:) = sum(z(:,i).*R);
end
%% 2.2
z=S.*D65;
s2 = zeros(size(z,2),3);
for i = 1:size(z,2)
    s2(i,:) = sum(z(:,i).*CMF);
end
%% 2.3
z=S.*A;
s3 = zeros(size(z,2),3);
for i = 1:size(z,2)
    s3(i,:) = sum(z(:,i).*CMF);
end
%% 2.4
z=S.*D65;
s4 = zeros(size(z,2),3);
for i = 1:size(z,2)
    s4(i,:) = sum(z(:,i).*R);
end
%% 3.1
img1=zeros(100,100,3);
img2=zeros(100,100,3);
img3=zeros(100,100,3);
img4=zeros(100,100,3);

for i = 1:4
    for i2 = 1:6
       for i3 = 1:3
          img1(1+25*(i-1):25*i,1+25*(i2-1):25*i2,i3) = s1(i*i2,i3);
          img2(1+25*(i-1):25*i,1+25*(i2-1):25*i2,i3) = s2(i*i2,i3);
          img3(1+25*(i-1):25*i,1+25*(i2-1):25*i2,i3) = s3(i*i2,i3);
          img4(1+25*(i-1):25*i,1+25*(i2-1):25*i2,i3) = s4(i*i2,i3);
       end
    end
end
figure;
subplot(2,2,1)
imshow(img1);
subplot(2,2,2)

img2 = xyz2rgb(img2);
imshow(img2);
subplot(2,2,3)
img3 = xyz2rgb(img3);
imshow(img3);
subplot(2,2,4)
imshow(img4);









