close all, clear all, clc
M = imread('imagenes2/imagen1.bmp');
figure
imshow(M);

[f c k1] = size(M);
MR = M(:,:,1);
MG = M(:,:,2);
MB = M(:,:,3);
MEG = rgb2gray(M);
figure
imshow(MEG)
R = zeros(f,c,8);

I = MEG;

for k=1:8
    for i=1:f
        for j=1:c
           R(i,j,k)=rem(fix(I(i,j)/(2^k)),2);
        end
    end
end

figure
imshow(R(:,:,1));
figure
imshow(R(:,:,2));
figure
imshow(R(:,:,3));
figure
imshow(R(:,:,4));
figure
imshow(R(:,:,5));
figure
imshow(R(:,:,6));
figure
imshow(R(:,:,7));
figure
imshow(R(:,:,8));