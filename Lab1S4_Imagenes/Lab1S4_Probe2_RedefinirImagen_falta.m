close all, clear all, clc
M = imread('imagenes2/imagen1.bmp');
figure
imshow(M);

[f c k] = size(M);
MR = M(:,:,1);
MG = M(:,:,2);
MB = M(:,:,3);
MEG = rgb2gray(M);

% define el tamaño de la escala
sc=3;
M2 = MEG(1:sc:end,1:sc:end);

figure
imshow(M2);
[f2 c2 k2] = size(M2);
M3=[];


% R = zeros(f,c)
% for 1=1:f
% R = (i,j)

