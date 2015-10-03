close all, clear all, clc
M = imread('imagenes2/imagen1.bmp');
figure
imshow(M);

[f c k] = size(M);
MR = M(:,:,1);
MG = M(:,:,2);
MB = M(:,:,3);
MEG = rgb2gray(M);

numPixeles = f*c;
HM = zeros(3,255);  %Histograma
HMA = zeros(3,255); %Histograma acumulado
for k=1:3
    for i=1:f
        for j=1:c
            pos = M(i,j,k);
            HM(k,pos+1)= HM(k,pos+1)+1;
        end
    end
end

for k=1:3
   acum=0;
   for i=1:255
       acum = acum+HM(k,i);
       HMA(k,i)=acum;
   end
end

HM = HM/numPixeles;
HMA = HMA/numPixeles;

for k=1:3
    figure
    plot(HM(k,:));
    figure
    plot(HMA(k,:));
end


