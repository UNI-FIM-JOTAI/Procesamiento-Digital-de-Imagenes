close all, clear all, clc
M = imread('imagenes2/imagen1.bmp');
figure
imshow(M);

[f c k] = size(M);
MR = M(:,:,1);
MG = M(:,:,2);
MB = M(:,:,3);
MEG = rgb2gray(M);
figure
imshow(MEG)
R = zeros(f,c);



for i=1:f
    for j=1:c
        R(i,j)=contrasteEqu(MEG(i,j));
    end
end

figure
imshow(uint8(R));