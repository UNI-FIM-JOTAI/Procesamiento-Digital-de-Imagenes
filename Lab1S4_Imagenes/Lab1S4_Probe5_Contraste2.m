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
R1 = zeros(f,c);
R2 = zeros(f,c);


for i=1:f
    for j=1:c
        img = MEG(i,j);
        if(img<90)
            val = 50;
        elseif (img>=90 && img<190)
            val = 170;
        elseif (img>=190)
            val = 50;
        end
        R1(i,j)=val;
    end
end

for i=1:f
    for j=1:c
        img = MEG(i,j);
        if(img<90)
            val = img;
        elseif (img>=90 && img<190)
            val = 170;
        elseif (img>=190)
            val = img;
        end
        R2(i,j)=val;
    end
end

figure
imshow(uint8(R1));
figure 
imshow(uint8(R2));